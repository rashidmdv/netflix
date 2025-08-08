// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fast_laugh_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FastLaughEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) likedVideos,
    required TResult Function(int id) unLikedVideos,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? likedVideos,
    TResult? Function(int id)? unLikedVideos,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? likedVideos,
    TResult Function(int id)? unLikedVideos,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LikedVideos value) likedVideos,
    required TResult Function(UnLikedVideos value) unLikedVideos,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LikedVideos value)? likedVideos,
    TResult? Function(UnLikedVideos value)? unLikedVideos,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LikedVideos value)? likedVideos,
    TResult Function(UnLikedVideos value)? unLikedVideos,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastLaughEventCopyWith<$Res> {
  factory $FastLaughEventCopyWith(
    FastLaughEvent value,
    $Res Function(FastLaughEvent) then,
  ) = _$FastLaughEventCopyWithImpl<$Res, FastLaughEvent>;
}

/// @nodoc
class _$FastLaughEventCopyWithImpl<$Res, $Val extends FastLaughEvent>
    implements $FastLaughEventCopyWith<$Res> {
  _$FastLaughEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FastLaughEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$FastLaughEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FastLaughEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FastLaughEvent.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'FastLaughEvent.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) likedVideos,
    required TResult Function(int id) unLikedVideos,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? likedVideos,
    TResult? Function(int id)? unLikedVideos,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? likedVideos,
    TResult Function(int id)? unLikedVideos,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LikedVideos value) likedVideos,
    required TResult Function(UnLikedVideos value) unLikedVideos,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LikedVideos value)? likedVideos,
    TResult? Function(UnLikedVideos value)? unLikedVideos,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LikedVideos value)? likedVideos,
    TResult Function(UnLikedVideos value)? unLikedVideos,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FastLaughEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LikedVideosImplCopyWith<$Res> {
  factory _$$LikedVideosImplCopyWith(
    _$LikedVideosImpl value,
    $Res Function(_$LikedVideosImpl) then,
  ) = __$$LikedVideosImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$LikedVideosImplCopyWithImpl<$Res>
    extends _$FastLaughEventCopyWithImpl<$Res, _$LikedVideosImpl>
    implements _$$LikedVideosImplCopyWith<$Res> {
  __$$LikedVideosImplCopyWithImpl(
    _$LikedVideosImpl _value,
    $Res Function(_$LikedVideosImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FastLaughEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$LikedVideosImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$LikedVideosImpl with DiagnosticableTreeMixin implements LikedVideos {
  const _$LikedVideosImpl({required this.id});

  @override
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FastLaughEvent.likedVideos(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FastLaughEvent.likedVideos'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikedVideosImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of FastLaughEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LikedVideosImplCopyWith<_$LikedVideosImpl> get copyWith =>
      __$$LikedVideosImplCopyWithImpl<_$LikedVideosImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) likedVideos,
    required TResult Function(int id) unLikedVideos,
  }) {
    return likedVideos(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? likedVideos,
    TResult? Function(int id)? unLikedVideos,
  }) {
    return likedVideos?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? likedVideos,
    TResult Function(int id)? unLikedVideos,
    required TResult orElse(),
  }) {
    if (likedVideos != null) {
      return likedVideos(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LikedVideos value) likedVideos,
    required TResult Function(UnLikedVideos value) unLikedVideos,
  }) {
    return likedVideos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LikedVideos value)? likedVideos,
    TResult? Function(UnLikedVideos value)? unLikedVideos,
  }) {
    return likedVideos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LikedVideos value)? likedVideos,
    TResult Function(UnLikedVideos value)? unLikedVideos,
    required TResult orElse(),
  }) {
    if (likedVideos != null) {
      return likedVideos(this);
    }
    return orElse();
  }
}

abstract class LikedVideos implements FastLaughEvent {
  const factory LikedVideos({required final int id}) = _$LikedVideosImpl;

  int get id;

  /// Create a copy of FastLaughEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LikedVideosImplCopyWith<_$LikedVideosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnLikedVideosImplCopyWith<$Res> {
  factory _$$UnLikedVideosImplCopyWith(
    _$UnLikedVideosImpl value,
    $Res Function(_$UnLikedVideosImpl) then,
  ) = __$$UnLikedVideosImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$UnLikedVideosImplCopyWithImpl<$Res>
    extends _$FastLaughEventCopyWithImpl<$Res, _$UnLikedVideosImpl>
    implements _$$UnLikedVideosImplCopyWith<$Res> {
  __$$UnLikedVideosImplCopyWithImpl(
    _$UnLikedVideosImpl _value,
    $Res Function(_$UnLikedVideosImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FastLaughEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$UnLikedVideosImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$UnLikedVideosImpl
    with DiagnosticableTreeMixin
    implements UnLikedVideos {
  const _$UnLikedVideosImpl({required this.id});

  @override
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FastLaughEvent.unLikedVideos(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FastLaughEvent.unLikedVideos'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnLikedVideosImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of FastLaughEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnLikedVideosImplCopyWith<_$UnLikedVideosImpl> get copyWith =>
      __$$UnLikedVideosImplCopyWithImpl<_$UnLikedVideosImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) likedVideos,
    required TResult Function(int id) unLikedVideos,
  }) {
    return unLikedVideos(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? likedVideos,
    TResult? Function(int id)? unLikedVideos,
  }) {
    return unLikedVideos?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? likedVideos,
    TResult Function(int id)? unLikedVideos,
    required TResult orElse(),
  }) {
    if (unLikedVideos != null) {
      return unLikedVideos(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LikedVideos value) likedVideos,
    required TResult Function(UnLikedVideos value) unLikedVideos,
  }) {
    return unLikedVideos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LikedVideos value)? likedVideos,
    TResult? Function(UnLikedVideos value)? unLikedVideos,
  }) {
    return unLikedVideos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LikedVideos value)? likedVideos,
    TResult Function(UnLikedVideos value)? unLikedVideos,
    required TResult orElse(),
  }) {
    if (unLikedVideos != null) {
      return unLikedVideos(this);
    }
    return orElse();
  }
}

abstract class UnLikedVideos implements FastLaughEvent {
  const factory UnLikedVideos({required final int id}) = _$UnLikedVideosImpl;

  int get id;

  /// Create a copy of FastLaughEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnLikedVideosImplCopyWith<_$UnLikedVideosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FastLaughState {
  List<Downloads> get videosList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  /// Create a copy of FastLaughState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FastLaughStateCopyWith<FastLaughState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastLaughStateCopyWith<$Res> {
  factory $FastLaughStateCopyWith(
    FastLaughState value,
    $Res Function(FastLaughState) then,
  ) = _$FastLaughStateCopyWithImpl<$Res, FastLaughState>;
  @useResult
  $Res call({List<Downloads> videosList, bool isLoading, bool isError});
}

/// @nodoc
class _$FastLaughStateCopyWithImpl<$Res, $Val extends FastLaughState>
    implements $FastLaughStateCopyWith<$Res> {
  _$FastLaughStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FastLaughState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videosList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(
      _value.copyWith(
            videosList: null == videosList
                ? _value.videosList
                : videosList // ignore: cast_nullable_to_non_nullable
                      as List<Downloads>,
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            isError: null == isError
                ? _value.isError
                : isError // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FastLaughStateImplCopyWith<$Res>
    implements $FastLaughStateCopyWith<$Res> {
  factory _$$FastLaughStateImplCopyWith(
    _$FastLaughStateImpl value,
    $Res Function(_$FastLaughStateImpl) then,
  ) = __$$FastLaughStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Downloads> videosList, bool isLoading, bool isError});
}

/// @nodoc
class __$$FastLaughStateImplCopyWithImpl<$Res>
    extends _$FastLaughStateCopyWithImpl<$Res, _$FastLaughStateImpl>
    implements _$$FastLaughStateImplCopyWith<$Res> {
  __$$FastLaughStateImplCopyWithImpl(
    _$FastLaughStateImpl _value,
    $Res Function(_$FastLaughStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FastLaughState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videosList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(
      _$FastLaughStateImpl(
        videosList: null == videosList
            ? _value._videosList
            : videosList // ignore: cast_nullable_to_non_nullable
                  as List<Downloads>,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        isError: null == isError
            ? _value.isError
            : isError // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$FastLaughStateImpl
    with DiagnosticableTreeMixin
    implements _FastLaughState {
  const _$FastLaughStateImpl({
    required final List<Downloads> videosList,
    required this.isLoading,
    required this.isError,
  }) : _videosList = videosList;

  final List<Downloads> _videosList;
  @override
  List<Downloads> get videosList {
    if (_videosList is EqualUnmodifiableListView) return _videosList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videosList);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FastLaughState(videosList: $videosList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FastLaughState'))
      ..add(DiagnosticsProperty('videosList', videosList))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isError', isError));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FastLaughStateImpl &&
            const DeepCollectionEquality().equals(
              other._videosList,
              _videosList,
            ) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_videosList),
    isLoading,
    isError,
  );

  /// Create a copy of FastLaughState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FastLaughStateImplCopyWith<_$FastLaughStateImpl> get copyWith =>
      __$$FastLaughStateImplCopyWithImpl<_$FastLaughStateImpl>(
        this,
        _$identity,
      );
}

abstract class _FastLaughState implements FastLaughState {
  const factory _FastLaughState({
    required final List<Downloads> videosList,
    required final bool isLoading,
    required final bool isError,
  }) = _$FastLaughStateImpl;

  @override
  List<Downloads> get videosList;
  @override
  bool get isLoading;
  @override
  bool get isError;

  /// Create a copy of FastLaughState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FastLaughStateImplCopyWith<_$FastLaughStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
