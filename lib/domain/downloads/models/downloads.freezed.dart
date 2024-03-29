// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloads.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DownloadModel _$DownloadModelFromJson(Map<String, dynamic> json) {
  return _DownloadModelOB.fromJson(json);
}

/// @nodoc
mixin _$DownloadModel {
// ignore: invalid_annotation_target
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "original_name")
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadModelCopyWith<DownloadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadModelCopyWith<$Res> {
  factory $DownloadModelCopyWith(
          DownloadModel value, $Res Function(DownloadModel) then) =
      _$DownloadModelCopyWithImpl<$Res, DownloadModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "original_name") String? title});
}

/// @nodoc
class _$DownloadModelCopyWithImpl<$Res, $Val extends DownloadModel>
    implements $DownloadModelCopyWith<$Res> {
  _$DownloadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterPath = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadModelOBImplCopyWith<$Res>
    implements $DownloadModelCopyWith<$Res> {
  factory _$$DownloadModelOBImplCopyWith(_$DownloadModelOBImpl value,
          $Res Function(_$DownloadModelOBImpl) then) =
      __$$DownloadModelOBImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "original_name") String? title});
}

/// @nodoc
class __$$DownloadModelOBImplCopyWithImpl<$Res>
    extends _$DownloadModelCopyWithImpl<$Res, _$DownloadModelOBImpl>
    implements _$$DownloadModelOBImplCopyWith<$Res> {
  __$$DownloadModelOBImplCopyWithImpl(
      _$DownloadModelOBImpl _value, $Res Function(_$DownloadModelOBImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterPath = freezed,
    Object? title = freezed,
  }) {
    return _then(_$DownloadModelOBImpl(
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DownloadModelOBImpl implements _DownloadModelOB {
  const _$DownloadModelOBImpl(
      {@JsonKey(name: "poster_path") this.posterPath,
      @JsonKey(name: "original_name") this.title});

  factory _$DownloadModelOBImpl.fromJson(Map<String, dynamic> json) =>
      _$$DownloadModelOBImplFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  @JsonKey(name: "original_name")
  final String? title;

  @override
  String toString() {
    return 'DownloadModel(posterPath: $posterPath, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadModelOBImpl &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, posterPath, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadModelOBImplCopyWith<_$DownloadModelOBImpl> get copyWith =>
      __$$DownloadModelOBImplCopyWithImpl<_$DownloadModelOBImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DownloadModelOBImplToJson(
      this,
    );
  }
}

abstract class _DownloadModelOB implements DownloadModel {
  const factory _DownloadModelOB(
          {@JsonKey(name: "poster_path") final String? posterPath,
          @JsonKey(name: "original_name") final String? title}) =
      _$DownloadModelOBImpl;

  factory _DownloadModelOB.fromJson(Map<String, dynamic> json) =
      _$DownloadModelOBImpl.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(name: "original_name")
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$DownloadModelOBImplCopyWith<_$DownloadModelOBImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
