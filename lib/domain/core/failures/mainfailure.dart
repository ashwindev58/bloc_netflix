import 'package:freezed_annotation/freezed_annotation.dart';
part 'mainfailure.freezed.dart';

@freezed
class Mainfailure with _$Mainfailure{
  const factory Mainfailure.clientFailure() = _ClientFailure;
  const factory Mainfailure.serverFailure() = _ServerFailure;
  
}