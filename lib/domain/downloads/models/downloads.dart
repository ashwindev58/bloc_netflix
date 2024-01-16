import 'package:freezed_annotation/freezed_annotation.dart';

part 'downloads.freezed.dart';
part 'downloads.g.dart';

@freezed
class DownloadModel with _$DownloadModel {
  const factory DownloadModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: "poster_path") String? posterPath,
    
    @JsonKey(name: "original_name") String? title,
    
  }) = _DownloadModelOB;
  factory DownloadModel.fromJson(Map<String, dynamic> json) =>
      _$DownloadModelFromJson(json);
}
