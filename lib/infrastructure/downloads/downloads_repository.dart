import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:main_netflix_bloc/core/api_end_points.dart';
import 'package:main_netflix_bloc/domain/downloads/i_downloads_repo.dart';
import 'package:main_netflix_bloc/domain/downloads/models/downloads.dart';

import '../../domain/core/failures/mainfailure.dart';

class DownloadsRepository implements IDownloadRepo {
  @override
  Future<Either<Mainfailure, List<DownloadModel>>> getdownloadsImage() async {
    log("==============================started get downloads ...");
    log((ApiEndPoints.downloads));
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downloads);
          log("=====================================================================");
    //  log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final  downloadsList =
            (response.data['results'] as List).map((e) {
          return DownloadModel.fromJson(e);
        }).toList();
            log("==============================returning get downloads ...$downloadsList");

        return Right(downloadsList);
      } else {
        return const Left(Mainfailure.serverFailure());
      
      }
    } catch (e) {
      log("${e}44444444444444444444444444444444444");
      return const Left(Mainfailure.clientFailure());
    }
  }
}
