// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchRespModel _$SearchRespModelFromJson(Map<String, dynamic> json) =>
    SearchRespModel(
      searchResultsData: (json['results'] as List<dynamic>?)
              ?.map((e) => SearchResultData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SearchRespModelToJson(SearchRespModel instance) =>
    <String, dynamic>{
      'results': instance.searchResultsData,
    };

SearchResultData _$SearchResultDataFromJson(Map<String, dynamic> json) =>
    SearchResultData(
      id: json['id'] as int?,
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$SearchResultDataToJson(SearchResultData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
    };
