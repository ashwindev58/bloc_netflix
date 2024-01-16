// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloads_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DownloadsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadsImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloadsImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadsImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadsImage value) getDownloadsImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloadsImage value)? getDownloadsImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadsImage value)? getDownloadsImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsEventCopyWith<$Res> {
  factory $DownloadsEventCopyWith(
          DownloadsEvent value, $Res Function(DownloadsEvent) then) =
      _$DownloadsEventCopyWithImpl<$Res, DownloadsEvent>;
}

/// @nodoc
class _$DownloadsEventCopyWithImpl<$Res, $Val extends DownloadsEvent>
    implements $DownloadsEventCopyWith<$Res> {
  _$DownloadsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDownloadsImageImplCopyWith<$Res> {
  factory _$$GetDownloadsImageImplCopyWith(_$GetDownloadsImageImpl value,
          $Res Function(_$GetDownloadsImageImpl) then) =
      __$$GetDownloadsImageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDownloadsImageImplCopyWithImpl<$Res>
    extends _$DownloadsEventCopyWithImpl<$Res, _$GetDownloadsImageImpl>
    implements _$$GetDownloadsImageImplCopyWith<$Res> {
  __$$GetDownloadsImageImplCopyWithImpl(_$GetDownloadsImageImpl _value,
      $Res Function(_$GetDownloadsImageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetDownloadsImageImpl
    with DiagnosticableTreeMixin
    implements _GetDownloadsImage {
  _$GetDownloadsImageImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DownloadsEvent.getDownloadsImage()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'DownloadsEvent.getDownloadsImage'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDownloadsImageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadsImage,
  }) {
    return getDownloadsImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloadsImage,
  }) {
    return getDownloadsImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadsImage,
    required TResult orElse(),
  }) {
    if (getDownloadsImage != null) {
      return getDownloadsImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadsImage value) getDownloadsImage,
  }) {
    return getDownloadsImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloadsImage value)? getDownloadsImage,
  }) {
    return getDownloadsImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadsImage value)? getDownloadsImage,
    required TResult orElse(),
  }) {
    if (getDownloadsImage != null) {
      return getDownloadsImage(this);
    }
    return orElse();
  }
}

abstract class _GetDownloadsImage implements DownloadsEvent {
  factory _GetDownloadsImage() = _$GetDownloadsImageImpl;
}

/// @nodoc
mixin _$DownloadsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<DownloadModel> get downloadsList => throw _privateConstructorUsedError;
  Option<Either<Mainfailure, List<DownloadModel>>> get downloadsSuccesFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadsStateCopyWith<DownloadsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsStateCopyWith<$Res> {
  factory $DownloadsStateCopyWith(
          DownloadsState value, $Res Function(DownloadsState) then) =
      _$DownloadsStateCopyWithImpl<$Res, DownloadsState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<DownloadModel> downloadsList,
      Option<Either<Mainfailure, List<DownloadModel>>> downloadsSuccesFailure});
}

/// @nodoc
class _$DownloadsStateCopyWithImpl<$Res, $Val extends DownloadsState>
    implements $DownloadsStateCopyWith<$Res> {
  _$DownloadsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? downloadsList = null,
    Object? downloadsSuccesFailure = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloadsList: null == downloadsList
          ? _value.downloadsList
          : downloadsList // ignore: cast_nullable_to_non_nullable
              as List<DownloadModel>,
      downloadsSuccesFailure: null == downloadsSuccesFailure
          ? _value.downloadsSuccesFailure
          : downloadsSuccesFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<Mainfailure, List<DownloadModel>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadStateImplCopyWith<$Res>
    implements $DownloadsStateCopyWith<$Res> {
  factory _$$DownloadStateImplCopyWith(
          _$DownloadStateImpl value, $Res Function(_$DownloadStateImpl) then) =
      __$$DownloadStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<DownloadModel> downloadsList,
      Option<Either<Mainfailure, List<DownloadModel>>> downloadsSuccesFailure});
}

/// @nodoc
class __$$DownloadStateImplCopyWithImpl<$Res>
    extends _$DownloadsStateCopyWithImpl<$Res, _$DownloadStateImpl>
    implements _$$DownloadStateImplCopyWith<$Res> {
  __$$DownloadStateImplCopyWithImpl(
      _$DownloadStateImpl _value, $Res Function(_$DownloadStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? downloadsList = null,
    Object? downloadsSuccesFailure = null,
  }) {
    return _then(_$DownloadStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloadsList: null == downloadsList
          ? _value._downloadsList
          : downloadsList // ignore: cast_nullable_to_non_nullable
              as List<DownloadModel>,
      downloadsSuccesFailure: null == downloadsSuccesFailure
          ? _value.downloadsSuccesFailure
          : downloadsSuccesFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<Mainfailure, List<DownloadModel>>>,
    ));
  }
}

/// @nodoc

class _$DownloadStateImpl
    with DiagnosticableTreeMixin
    implements _DownloadState {
  const _$DownloadStateImpl(
      {required this.isLoading,
      required final List<DownloadModel> downloadsList,
      required this.downloadsSuccesFailure})
      : _downloadsList = downloadsList;

  @override
  final bool isLoading;
  final List<DownloadModel> _downloadsList;
  @override
  List<DownloadModel> get downloadsList {
    if (_downloadsList is EqualUnmodifiableListView) return _downloadsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_downloadsList);
  }

  @override
  final Option<Either<Mainfailure, List<DownloadModel>>> downloadsSuccesFailure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DownloadsState(isLoading: $isLoading, downloadsList: $downloadsList, downloadsSuccesFailure: $downloadsSuccesFailure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DownloadsState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('downloadsList', downloadsList))
      ..add(DiagnosticsProperty(
          'downloadsSuccesFailure', downloadsSuccesFailure));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._downloadsList, _downloadsList) &&
            (identical(other.downloadsSuccesFailure, downloadsSuccesFailure) ||
                other.downloadsSuccesFailure == downloadsSuccesFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_downloadsList),
      downloadsSuccesFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadStateImplCopyWith<_$DownloadStateImpl> get copyWith =>
      __$$DownloadStateImplCopyWithImpl<_$DownloadStateImpl>(this, _$identity);
}

abstract class _DownloadState implements DownloadsState {
  const factory _DownloadState(
      {required final bool isLoading,
      required final List<DownloadModel> downloadsList,
      required final Option<Either<Mainfailure, List<DownloadModel>>>
          downloadsSuccesFailure}) = _$DownloadStateImpl;

  @override
  bool get isLoading;
  @override
  List<DownloadModel> get downloadsList;
  @override
  Option<Either<Mainfailure, List<DownloadModel>>> get downloadsSuccesFailure;
  @override
  @JsonKey(ignore: true)
  _$$DownloadStateImplCopyWith<_$DownloadStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
