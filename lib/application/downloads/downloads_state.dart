part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isLoading,
    required List<DownloadModel> downloadsList,
    required Option<Either<Mainfailure, List<DownloadModel>>>
        downloadsSuccesFailure,
  }) = _DownloadState;
  factory DownloadsState.initial() {
    return const DownloadsState(
        isLoading: true, downloadsSuccesFailure: None(), downloadsList: []);
  }
}
