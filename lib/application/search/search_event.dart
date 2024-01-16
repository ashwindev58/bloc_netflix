part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
   factory SearchEvent.initialize() = Initialize;
   factory SearchEvent.searchMovies({
    required String movieQuery,
  }) = SearchMovie;
}