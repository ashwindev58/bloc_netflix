

import 'package:dartz/dartz.dart';
import 'package:main_netflix_bloc/domain/core/failures/mainfailure.dart';
import 'package:main_netflix_bloc/domain/search/model/search_resp_model/search_resp_model.dart';

abstract class SearchService{
  Future<Either<Mainfailure,SearchRespModel>> searchMovies({
    required movieQuery,
  });
}