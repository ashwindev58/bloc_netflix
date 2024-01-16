import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:main_netflix_bloc/domain/core/failures/mainfailure.dart';
import 'package:main_netflix_bloc/domain/downloads/i_downloads_repo.dart';
import 'package:main_netflix_bloc/domain/search/search_service.dart';
import 'dart:developer';

import '../../domain/downloads/models/downloads.dart';
import '../../domain/search/model/search_resp_model/search_resp_model.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadRepo _downloadRepoServices;
  final SearchService _searchService;
  SearchBloc(this._downloadRepoServices, this._searchService)
      : super(SearchState.initial()) {
    /*Idle State*/
    on<Initialize>((event, emit) async {
      // get Trending
      if (state.idleList.isNotEmpty) {
        emit(
          SearchState(
            searchResultList: [],
            idleList: state.idleList,
            isLoading: false,
            isError: false,
          ),
        );
      } else {
        emit(
          const SearchState(
            searchResultList: [],
            idleList: [],
            isLoading: true,
            isError: false,
          ),
        );
      }
      log("==============================Search Bloc 1111111111");
      final _resul = await _downloadRepoServices.getdownloadsImage();
      final _state = _resul.fold(
        (Mainfailure f) {
          return const SearchState(
            searchResultList: [],
            idleList: [],
            isLoading: false,
            isError: true,
          );
        },
        (List<DownloadModel> list) {
          return SearchState(
            searchResultList: [],
            idleList: list,
            isLoading: false,
            isError: false,
          );
        },
      );

      emit(_state);
    });
    /* search result state */
    on<SearchMovie>((event, emit) async {
      // call search movie api
      final _result =
          await _searchService.searchMovies(movieQuery: event.movieQuery);
      print("=================result=========================");
      log(_result.toString());
      final _state = _result.fold(
        (Mainfailure f) {
          return const SearchState(
            searchResultList: [],
            idleList: [],
            isLoading: false,
            isError: true,
          );
        },
        (SearchRespModel r) {
          return SearchState(
            searchResultList: r.searchResultsData,
            idleList: state.idleList,
            isLoading: false,
            isError: false,
          );
        },
      );
      emit(_state);
    });
  }
}
