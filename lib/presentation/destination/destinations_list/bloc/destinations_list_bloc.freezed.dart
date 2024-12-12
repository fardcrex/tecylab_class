// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'destinations_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DestinationsListEvent {
  bool get withError => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool withError) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool withError)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool withError)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDestinations value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadDestinations value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDestinations value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of DestinationsListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DestinationsListEventCopyWith<DestinationsListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DestinationsListEventCopyWith<$Res> {
  factory $DestinationsListEventCopyWith(DestinationsListEvent value,
          $Res Function(DestinationsListEvent) then) =
      _$DestinationsListEventCopyWithImpl<$Res, DestinationsListEvent>;
  @useResult
  $Res call({bool withError});
}

/// @nodoc
class _$DestinationsListEventCopyWithImpl<$Res,
        $Val extends DestinationsListEvent>
    implements $DestinationsListEventCopyWith<$Res> {
  _$DestinationsListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DestinationsListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? withError = null,
  }) {
    return _then(_value.copyWith(
      withError: null == withError
          ? _value.withError
          : withError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadDestinationsImplCopyWith<$Res>
    implements $DestinationsListEventCopyWith<$Res> {
  factory _$$LoadDestinationsImplCopyWith(_$LoadDestinationsImpl value,
          $Res Function(_$LoadDestinationsImpl) then) =
      __$$LoadDestinationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool withError});
}

/// @nodoc
class __$$LoadDestinationsImplCopyWithImpl<$Res>
    extends _$DestinationsListEventCopyWithImpl<$Res, _$LoadDestinationsImpl>
    implements _$$LoadDestinationsImplCopyWith<$Res> {
  __$$LoadDestinationsImplCopyWithImpl(_$LoadDestinationsImpl _value,
      $Res Function(_$LoadDestinationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DestinationsListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? withError = null,
  }) {
    return _then(_$LoadDestinationsImpl(
      withError: null == withError
          ? _value.withError
          : withError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadDestinationsImpl implements LoadDestinations {
  const _$LoadDestinationsImpl({required this.withError});

  @override
  final bool withError;

  @override
  String toString() {
    return 'DestinationsListEvent.load(withError: $withError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadDestinationsImpl &&
            (identical(other.withError, withError) ||
                other.withError == withError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, withError);

  /// Create a copy of DestinationsListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadDestinationsImplCopyWith<_$LoadDestinationsImpl> get copyWith =>
      __$$LoadDestinationsImplCopyWithImpl<_$LoadDestinationsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool withError) load,
  }) {
    return load(withError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool withError)? load,
  }) {
    return load?.call(withError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool withError)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(withError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDestinations value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadDestinations value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDestinations value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadDestinations implements DestinationsListEvent {
  const factory LoadDestinations({required final bool withError}) =
      _$LoadDestinationsImpl;

  @override
  bool get withError;

  /// Create a copy of DestinationsListEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadDestinationsImplCopyWith<_$LoadDestinationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DestinationsListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DestinationFailure failure) error,
    required TResult Function(List<DestinationEntity> destinations) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DestinationFailure failure)? error,
    TResult? Function(List<DestinationEntity> destinations)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DestinationFailure failure)? error,
    TResult Function(List<DestinationEntity> destinations)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DestinationsListInitial value) initial,
    required TResult Function(DestinationsListLoading value) loading,
    required TResult Function(DestinationsListError value) error,
    required TResult Function(DestinationsListSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DestinationsListInitial value)? initial,
    TResult? Function(DestinationsListLoading value)? loading,
    TResult? Function(DestinationsListError value)? error,
    TResult? Function(DestinationsListSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DestinationsListInitial value)? initial,
    TResult Function(DestinationsListLoading value)? loading,
    TResult Function(DestinationsListError value)? error,
    TResult Function(DestinationsListSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DestinationsListStateCopyWith<$Res> {
  factory $DestinationsListStateCopyWith(DestinationsListState value,
          $Res Function(DestinationsListState) then) =
      _$DestinationsListStateCopyWithImpl<$Res, DestinationsListState>;
}

/// @nodoc
class _$DestinationsListStateCopyWithImpl<$Res,
        $Val extends DestinationsListState>
    implements $DestinationsListStateCopyWith<$Res> {
  _$DestinationsListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DestinationsListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DestinationsListInitialImplCopyWith<$Res> {
  factory _$$DestinationsListInitialImplCopyWith(
          _$DestinationsListInitialImpl value,
          $Res Function(_$DestinationsListInitialImpl) then) =
      __$$DestinationsListInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DestinationsListInitialImplCopyWithImpl<$Res>
    extends _$DestinationsListStateCopyWithImpl<$Res,
        _$DestinationsListInitialImpl>
    implements _$$DestinationsListInitialImplCopyWith<$Res> {
  __$$DestinationsListInitialImplCopyWithImpl(
      _$DestinationsListInitialImpl _value,
      $Res Function(_$DestinationsListInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of DestinationsListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DestinationsListInitialImpl implements DestinationsListInitial {
  const _$DestinationsListInitialImpl();

  @override
  String toString() {
    return 'DestinationsListState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DestinationsListInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DestinationFailure failure) error,
    required TResult Function(List<DestinationEntity> destinations) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DestinationFailure failure)? error,
    TResult? Function(List<DestinationEntity> destinations)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DestinationFailure failure)? error,
    TResult Function(List<DestinationEntity> destinations)? success,
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
    required TResult Function(DestinationsListInitial value) initial,
    required TResult Function(DestinationsListLoading value) loading,
    required TResult Function(DestinationsListError value) error,
    required TResult Function(DestinationsListSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DestinationsListInitial value)? initial,
    TResult? Function(DestinationsListLoading value)? loading,
    TResult? Function(DestinationsListError value)? error,
    TResult? Function(DestinationsListSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DestinationsListInitial value)? initial,
    TResult Function(DestinationsListLoading value)? loading,
    TResult Function(DestinationsListError value)? error,
    TResult Function(DestinationsListSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DestinationsListInitial implements DestinationsListState {
  const factory DestinationsListInitial() = _$DestinationsListInitialImpl;
}

/// @nodoc
abstract class _$$DestinationsListLoadingImplCopyWith<$Res> {
  factory _$$DestinationsListLoadingImplCopyWith(
          _$DestinationsListLoadingImpl value,
          $Res Function(_$DestinationsListLoadingImpl) then) =
      __$$DestinationsListLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DestinationsListLoadingImplCopyWithImpl<$Res>
    extends _$DestinationsListStateCopyWithImpl<$Res,
        _$DestinationsListLoadingImpl>
    implements _$$DestinationsListLoadingImplCopyWith<$Res> {
  __$$DestinationsListLoadingImplCopyWithImpl(
      _$DestinationsListLoadingImpl _value,
      $Res Function(_$DestinationsListLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of DestinationsListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DestinationsListLoadingImpl implements DestinationsListLoading {
  const _$DestinationsListLoadingImpl();

  @override
  String toString() {
    return 'DestinationsListState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DestinationsListLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DestinationFailure failure) error,
    required TResult Function(List<DestinationEntity> destinations) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DestinationFailure failure)? error,
    TResult? Function(List<DestinationEntity> destinations)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DestinationFailure failure)? error,
    TResult Function(List<DestinationEntity> destinations)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DestinationsListInitial value) initial,
    required TResult Function(DestinationsListLoading value) loading,
    required TResult Function(DestinationsListError value) error,
    required TResult Function(DestinationsListSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DestinationsListInitial value)? initial,
    TResult? Function(DestinationsListLoading value)? loading,
    TResult? Function(DestinationsListError value)? error,
    TResult? Function(DestinationsListSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DestinationsListInitial value)? initial,
    TResult Function(DestinationsListLoading value)? loading,
    TResult Function(DestinationsListError value)? error,
    TResult Function(DestinationsListSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DestinationsListLoading implements DestinationsListState {
  const factory DestinationsListLoading() = _$DestinationsListLoadingImpl;
}

/// @nodoc
abstract class _$$DestinationsListErrorImplCopyWith<$Res> {
  factory _$$DestinationsListErrorImplCopyWith(
          _$DestinationsListErrorImpl value,
          $Res Function(_$DestinationsListErrorImpl) then) =
      __$$DestinationsListErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DestinationFailure failure});

  $DestinationFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$DestinationsListErrorImplCopyWithImpl<$Res>
    extends _$DestinationsListStateCopyWithImpl<$Res,
        _$DestinationsListErrorImpl>
    implements _$$DestinationsListErrorImplCopyWith<$Res> {
  __$$DestinationsListErrorImplCopyWithImpl(_$DestinationsListErrorImpl _value,
      $Res Function(_$DestinationsListErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of DestinationsListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$DestinationsListErrorImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as DestinationFailure,
    ));
  }

  /// Create a copy of DestinationsListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DestinationFailureCopyWith<$Res> get failure {
    return $DestinationFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$DestinationsListErrorImpl implements DestinationsListError {
  const _$DestinationsListErrorImpl(this.failure);

  @override
  final DestinationFailure failure;

  @override
  String toString() {
    return 'DestinationsListState.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DestinationsListErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of DestinationsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DestinationsListErrorImplCopyWith<_$DestinationsListErrorImpl>
      get copyWith => __$$DestinationsListErrorImplCopyWithImpl<
          _$DestinationsListErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DestinationFailure failure) error,
    required TResult Function(List<DestinationEntity> destinations) success,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DestinationFailure failure)? error,
    TResult? Function(List<DestinationEntity> destinations)? success,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DestinationFailure failure)? error,
    TResult Function(List<DestinationEntity> destinations)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DestinationsListInitial value) initial,
    required TResult Function(DestinationsListLoading value) loading,
    required TResult Function(DestinationsListError value) error,
    required TResult Function(DestinationsListSuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DestinationsListInitial value)? initial,
    TResult? Function(DestinationsListLoading value)? loading,
    TResult? Function(DestinationsListError value)? error,
    TResult? Function(DestinationsListSuccess value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DestinationsListInitial value)? initial,
    TResult Function(DestinationsListLoading value)? loading,
    TResult Function(DestinationsListError value)? error,
    TResult Function(DestinationsListSuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DestinationsListError implements DestinationsListState {
  const factory DestinationsListError(final DestinationFailure failure) =
      _$DestinationsListErrorImpl;

  DestinationFailure get failure;

  /// Create a copy of DestinationsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DestinationsListErrorImplCopyWith<_$DestinationsListErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DestinationsListSuccessImplCopyWith<$Res> {
  factory _$$DestinationsListSuccessImplCopyWith(
          _$DestinationsListSuccessImpl value,
          $Res Function(_$DestinationsListSuccessImpl) then) =
      __$$DestinationsListSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DestinationEntity> destinations});
}

/// @nodoc
class __$$DestinationsListSuccessImplCopyWithImpl<$Res>
    extends _$DestinationsListStateCopyWithImpl<$Res,
        _$DestinationsListSuccessImpl>
    implements _$$DestinationsListSuccessImplCopyWith<$Res> {
  __$$DestinationsListSuccessImplCopyWithImpl(
      _$DestinationsListSuccessImpl _value,
      $Res Function(_$DestinationsListSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of DestinationsListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destinations = null,
  }) {
    return _then(_$DestinationsListSuccessImpl(
      null == destinations
          ? _value._destinations
          : destinations // ignore: cast_nullable_to_non_nullable
              as List<DestinationEntity>,
    ));
  }
}

/// @nodoc

class _$DestinationsListSuccessImpl implements DestinationsListSuccess {
  const _$DestinationsListSuccessImpl(
      final List<DestinationEntity> destinations)
      : _destinations = destinations;

  final List<DestinationEntity> _destinations;
  @override
  List<DestinationEntity> get destinations {
    if (_destinations is EqualUnmodifiableListView) return _destinations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_destinations);
  }

  @override
  String toString() {
    return 'DestinationsListState.success(destinations: $destinations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DestinationsListSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._destinations, _destinations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_destinations));

  /// Create a copy of DestinationsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DestinationsListSuccessImplCopyWith<_$DestinationsListSuccessImpl>
      get copyWith => __$$DestinationsListSuccessImplCopyWithImpl<
          _$DestinationsListSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DestinationFailure failure) error,
    required TResult Function(List<DestinationEntity> destinations) success,
  }) {
    return success(destinations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DestinationFailure failure)? error,
    TResult? Function(List<DestinationEntity> destinations)? success,
  }) {
    return success?.call(destinations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DestinationFailure failure)? error,
    TResult Function(List<DestinationEntity> destinations)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(destinations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DestinationsListInitial value) initial,
    required TResult Function(DestinationsListLoading value) loading,
    required TResult Function(DestinationsListError value) error,
    required TResult Function(DestinationsListSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DestinationsListInitial value)? initial,
    TResult? Function(DestinationsListLoading value)? loading,
    TResult? Function(DestinationsListError value)? error,
    TResult? Function(DestinationsListSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DestinationsListInitial value)? initial,
    TResult Function(DestinationsListLoading value)? loading,
    TResult Function(DestinationsListError value)? error,
    TResult Function(DestinationsListSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class DestinationsListSuccess implements DestinationsListState {
  const factory DestinationsListSuccess(
          final List<DestinationEntity> destinations) =
      _$DestinationsListSuccessImpl;

  List<DestinationEntity> get destinations;

  /// Create a copy of DestinationsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DestinationsListSuccessImplCopyWith<_$DestinationsListSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
