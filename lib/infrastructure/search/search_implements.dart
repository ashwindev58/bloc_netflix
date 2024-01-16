import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:main_netflix_bloc/domain/core/failures/mainfailure.dart';
import 'package:main_netflix_bloc/domain/search/model/search_resp_model/search_resp_model.dart';
import 'package:main_netflix_bloc/domain/search/search_service.dart';
import 'package:main_netflix_bloc/infrastructure/apikey.dart';

import '../../core/api_end_points.dart';

class SearchImpl implements SearchService {
  @override
  Future<Either<Mainfailure, SearchRespModel>> searchMovies(
      {required movieQuery}) async{
    // TODO: implement searchMovies

     try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.search,queryParameters: {
            'query':movieQuery,
          });
           log("resp of $movieQuery");

      //     log("==================================");
      // log(response.data.toString());
      //  log("==================================");
      if (response.statusCode == 200 || response.statusCode == 201) {
        log("resp of $movieQuery 200");
        var  result=SearchRespModel.fromJson(response.data);

        return Right(result);
      } else {
        return const Left(Mainfailure.serverFailure());
      
      }
    } catch (e) {
      log("${e}44444444444444444444444444444444444");
      return const Left(Mainfailure.clientFailure());
    }
  }
}
