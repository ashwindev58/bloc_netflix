import 'package:json_annotation/json_annotation.dart';
import 'package:main_netflix_bloc/core/constants.dart';


part 'search_resp_model.g.dart';

@JsonSerializable()
class SearchRespModel {
  @JsonKey(name: 'results') 
	List<SearchResultData> searchResultsData;

	SearchRespModel({
		 this.searchResultsData=const [], 
	});

	factory SearchRespModel.fromJson(Map<String, dynamic> json) {
		return _$SearchRespModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$SearchRespModelToJson(this);
}


@JsonSerializable()
class SearchResultData {
	@JsonKey(name: 'id') 
	int? id;
	@JsonKey(name: 'original_title') 
	String? originalTitle;
	@JsonKey(name: 'poster_path') 
	String? posterPath;
  String get posterImgUrl=>'$imageAppendUrl$posterPath';


	SearchResultData({
		this.id, 
		this.originalTitle, 
		this.posterPath, 
	});

	factory SearchResultData.fromJson(Map<String, dynamic> json) {
		return _$SearchResultDataFromJson(json);
	}

	Map<String, dynamic> toJson() => _$SearchResultDataToJson(this);
}