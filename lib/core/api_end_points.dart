import 'package:main_netflix_bloc/core/strings.dart';

import 'package:main_netflix_bloc/infrastructure/apikey.dart';

class ApiEndPoints {

  static const downloads="${kbaseUrl}trending/tv/day?api_key=$apiKey";
  static const search="${kbaseUrl}search/movie?api_key=$apiKey";
}
