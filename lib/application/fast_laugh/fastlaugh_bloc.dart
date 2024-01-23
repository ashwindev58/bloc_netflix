import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:main_netflix_bloc/infrastructure/downloads/downloads_repository.dart';
import '../../domain/downloads/models/downloads.dart';

part 'fastlaugh_event.dart';
part 'fastlaugh_state.dart';
part 'fastlaugh_bloc.freezed.dart';

class FastlaughBloc extends Bloc<FastlaughEvent, FastlaughState> {
  FastlaughBloc(DownloadsRepository downloadsRepository)
      : super(FastlaughState.initial()) {
    on<FastlaughEvent>((event, emit) async {
      //sending loading to ui
      emit(const FastlaughState(
        videoList: [],
        isLoading: true,
        isError: false,
      ));
      //get trending
      final result = await downloadsRepository.getdownloadsImage();
      final state = result.fold(
          (l) => const FastlaughState(
                videoList: [],
                isLoading: false,
                isError: true,
              ),
          (resp) => FastlaughState(
                videoList: resp,
                isLoading: false,
                isError: false,
              ));
      // send to ui
      emit(state);
    });
  }
}
