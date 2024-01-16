import 'package:dartz/dartz.dart';
import 'package:main_netflix_bloc/domain/downloads/models/downloads.dart';

import '../core/failures/mainfailure.dart';

abstract class IDownloadRepo{
  Future<Either<Mainfailure,List<DownloadModel>>>getdownloadsImage();
}