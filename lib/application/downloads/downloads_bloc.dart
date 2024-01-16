import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:main_netflix_bloc/domain/downloads/i_downloads_repo.dart';

import '../../domain/core/failures/mainfailure.dart';
import '../../domain/downloads/models/downloads.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadRepo _downloadRepo;
  
  DownloadsBloc(this._downloadRepo) : super(DownloadsState.initial()) {
    on<_GetDownloadsImage>((event, emit) async {
      log("----------------------------downloads bloc");
      log(_downloadRepo.toString());
      emit(
        state.copyWith(
          isLoading: true,
          downloadsSuccesFailure: none(),
        ),
      );
      final Either<Mainfailure, List<DownloadModel>> downloadOptions =
          await _downloadRepo.getdownloadsImage();
         // log("----------------------------downloads bloc2222");
    //  log(downloadOptions.toString());
      emit(
        downloadOptions.fold(
          (failure) => state.copyWith(
            isLoading: false,
            downloadsSuccesFailure: Some(
              Left(failure),
            ),
          ),
          (success) => state.copyWith(
            isLoading: false,downloadsList: success,
            downloadsSuccesFailure: Some(
              Right(success),
            ),
          ),
        ),
      );
    });
  }
}
