// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_destination_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateDestinationEvent {
  String get countryFrom => throw _privateConstructorUsedError;
  String get countryTo => throw _privateConstructorUsedError;
  double get primaryPrice => throw _privateConstructorUsedError;
  double get secondaryPrice => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String countryFrom, String countryTo,
            double primaryPrice, double secondaryPrice)
        create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String countryFrom, String countryTo, double primaryPrice,
            double secondaryPrice)?
        create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String countryFrom, String countryTo, double primaryPrice,
            double secondaryPrice)?
        create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CreateDestinationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateDestinationEventCopyWith<CreateDestinationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateDestinationEventCopyWith<$Res> {
  factory $CreateDestinationEventCopyWith(CreateDestinationEvent value,
          $Res Function(CreateDestinationEvent) then) =
      _$CreateDestinationEventCopyWithImpl<$Res, CreateDestinationEvent>;
  @useResult
  $Res call(
      {String countryFrom,
      String countryTo,
      double primaryPrice,
      double secondaryPrice});
}

/// @nodoc
class _$CreateDestinationEventCopyWithImpl<$Res,
        $Val extends CreateDestinationEvent>
    implements $CreateDestinationEventCopyWith<$Res> {
  _$CreateDestinationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateDestinationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryFrom = null,
    Object? countryTo = null,
    Object? primaryPrice = null,
    Object? secondaryPrice = null,
  }) {
    return _then(_value.copyWith(
      countryFrom: null == countryFrom
          ? _value.countryFrom
          : countryFrom // ignore: cast_nullable_to_non_nullable
              as String,
      countryTo: null == countryTo
          ? _value.countryTo
          : countryTo // ignore: cast_nullable_to_non_nullable
              as String,
      primaryPrice: null == primaryPrice
          ? _value.primaryPrice
          : primaryPrice // ignore: cast_nullable_to_non_nullable
              as double,
      secondaryPrice: null == secondaryPrice
          ? _value.secondaryPrice
          : secondaryPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateImplCopyWith<$Res>
    implements $CreateDestinationEventCopyWith<$Res> {
  factory _$$CreateImplCopyWith(
          _$CreateImpl value, $Res Function(_$CreateImpl) then) =
      __$$CreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String countryFrom,
      String countryTo,
      double primaryPrice,
      double secondaryPrice});
}

/// @nodoc
class __$$CreateImplCopyWithImpl<$Res>
    extends _$CreateDestinationEventCopyWithImpl<$Res, _$CreateImpl>
    implements _$$CreateImplCopyWith<$Res> {
  __$$CreateImplCopyWithImpl(
      _$CreateImpl _value, $Res Function(_$CreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateDestinationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryFrom = null,
    Object? countryTo = null,
    Object? primaryPrice = null,
    Object? secondaryPrice = null,
  }) {
    return _then(_$CreateImpl(
      countryFrom: null == countryFrom
          ? _value.countryFrom
          : countryFrom // ignore: cast_nullable_to_non_nullable
              as String,
      countryTo: null == countryTo
          ? _value.countryTo
          : countryTo // ignore: cast_nullable_to_non_nullable
              as String,
      primaryPrice: null == primaryPrice
          ? _value.primaryPrice
          : primaryPrice // ignore: cast_nullable_to_non_nullable
              as double,
      secondaryPrice: null == secondaryPrice
          ? _value.secondaryPrice
          : secondaryPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CreateImpl implements _Create {
  const _$CreateImpl(
      {required this.countryFrom,
      required this.countryTo,
      required this.primaryPrice,
      required this.secondaryPrice});

  @override
  final String countryFrom;
  @override
  final String countryTo;
  @override
  final double primaryPrice;
  @override
  final double secondaryPrice;

  @override
  String toString() {
    return 'CreateDestinationEvent.create(countryFrom: $countryFrom, countryTo: $countryTo, primaryPrice: $primaryPrice, secondaryPrice: $secondaryPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateImpl &&
            (identical(other.countryFrom, countryFrom) ||
                other.countryFrom == countryFrom) &&
            (identical(other.countryTo, countryTo) ||
                other.countryTo == countryTo) &&
            (identical(other.primaryPrice, primaryPrice) ||
                other.primaryPrice == primaryPrice) &&
            (identical(other.secondaryPrice, secondaryPrice) ||
                other.secondaryPrice == secondaryPrice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, countryFrom, countryTo, primaryPrice, secondaryPrice);

  /// Create a copy of CreateDestinationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      __$$CreateImplCopyWithImpl<_$CreateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String countryFrom, String countryTo,
            double primaryPrice, double secondaryPrice)
        create,
  }) {
    return create(countryFrom, countryTo, primaryPrice, secondaryPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String countryFrom, String countryTo, double primaryPrice,
            double secondaryPrice)?
        create,
  }) {
    return create?.call(countryFrom, countryTo, primaryPrice, secondaryPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String countryFrom, String countryTo, double primaryPrice,
            double secondaryPrice)?
        create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(countryFrom, countryTo, primaryPrice, secondaryPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _Create implements CreateDestinationEvent {
  const factory _Create(
      {required final String countryFrom,
      required final String countryTo,
      required final double primaryPrice,
      required final double secondaryPrice}) = _$CreateImpl;

  @override
  String get countryFrom;
  @override
  String get countryTo;
  @override
  double get primaryPrice;
  @override
  double get secondaryPrice;

  /// Create a copy of CreateDestinationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateDestinationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DestinationFailure failure) error,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DestinationFailure failure)? error,
    TResult? Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DestinationFailure failure)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CreateDestinationStateLoading value) loading,
    required TResult Function(CreateDestinationStateError value) error,
    required TResult Function(CreateDestinationStateSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CreateDestinationStateLoading value)? loading,
    TResult? Function(CreateDestinationStateError value)? error,
    TResult? Function(CreateDestinationStateSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateDestinationStateLoading value)? loading,
    TResult Function(CreateDestinationStateError value)? error,
    TResult Function(CreateDestinationStateSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateDestinationStateCopyWith<$Res> {
  factory $CreateDestinationStateCopyWith(CreateDestinationState value,
          $Res Function(CreateDestinationState) then) =
      _$CreateDestinationStateCopyWithImpl<$Res, CreateDestinationState>;
}

/// @nodoc
class _$CreateDestinationStateCopyWithImpl<$Res,
        $Val extends CreateDestinationState>
    implements $CreateDestinationStateCopyWith<$Res> {
  _$CreateDestinationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateDestinationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CreateDestinationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateDestinationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CreateDestinationState.initial()';
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
    required TResult Function() loading,
    required TResult Function(DestinationFailure failure) error,
    required TResult Function() success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DestinationFailure failure)? error,
    TResult? Function()? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DestinationFailure failure)? error,
    TResult Function()? success,
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
    required TResult Function(CreateDestinationStateLoading value) loading,
    required TResult Function(CreateDestinationStateError value) error,
    required TResult Function(CreateDestinationStateSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CreateDestinationStateLoading value)? loading,
    TResult? Function(CreateDestinationStateError value)? error,
    TResult? Function(CreateDestinationStateSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateDestinationStateLoading value)? loading,
    TResult Function(CreateDestinationStateError value)? error,
    TResult Function(CreateDestinationStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreateDestinationState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CreateDestinationStateLoadingImplCopyWith<$Res> {
  factory _$$CreateDestinationStateLoadingImplCopyWith(
          _$CreateDestinationStateLoadingImpl value,
          $Res Function(_$CreateDestinationStateLoadingImpl) then) =
      __$$CreateDestinationStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateDestinationStateLoadingImplCopyWithImpl<$Res>
    extends _$CreateDestinationStateCopyWithImpl<$Res,
        _$CreateDestinationStateLoadingImpl>
    implements _$$CreateDestinationStateLoadingImplCopyWith<$Res> {
  __$$CreateDestinationStateLoadingImplCopyWithImpl(
      _$CreateDestinationStateLoadingImpl _value,
      $Res Function(_$CreateDestinationStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateDestinationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CreateDestinationStateLoadingImpl
    implements CreateDestinationStateLoading {
  const _$CreateDestinationStateLoadingImpl();

  @override
  String toString() {
    return 'CreateDestinationState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateDestinationStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DestinationFailure failure) error,
    required TResult Function() success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DestinationFailure failure)? error,
    TResult? Function()? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DestinationFailure failure)? error,
    TResult Function()? success,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(CreateDestinationStateLoading value) loading,
    required TResult Function(CreateDestinationStateError value) error,
    required TResult Function(CreateDestinationStateSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CreateDestinationStateLoading value)? loading,
    TResult? Function(CreateDestinationStateError value)? error,
    TResult? Function(CreateDestinationStateSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateDestinationStateLoading value)? loading,
    TResult Function(CreateDestinationStateError value)? error,
    TResult Function(CreateDestinationStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CreateDestinationStateLoading implements CreateDestinationState {
  const factory CreateDestinationStateLoading() =
      _$CreateDestinationStateLoadingImpl;
}

/// @nodoc
abstract class _$$CreateDestinationStateErrorImplCopyWith<$Res> {
  factory _$$CreateDestinationStateErrorImplCopyWith(
          _$CreateDestinationStateErrorImpl value,
          $Res Function(_$CreateDestinationStateErrorImpl) then) =
      __$$CreateDestinationStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DestinationFailure failure});

  $DestinationFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$CreateDestinationStateErrorImplCopyWithImpl<$Res>
    extends _$CreateDestinationStateCopyWithImpl<$Res,
        _$CreateDestinationStateErrorImpl>
    implements _$$CreateDestinationStateErrorImplCopyWith<$Res> {
  __$$CreateDestinationStateErrorImplCopyWithImpl(
      _$CreateDestinationStateErrorImpl _value,
      $Res Function(_$CreateDestinationStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateDestinationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$CreateDestinationStateErrorImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as DestinationFailure,
    ));
  }

  /// Create a copy of CreateDestinationState
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

class _$CreateDestinationStateErrorImpl implements CreateDestinationStateError {
  const _$CreateDestinationStateErrorImpl(this.failure);

  @override
  final DestinationFailure failure;

  @override
  String toString() {
    return 'CreateDestinationState.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateDestinationStateErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of CreateDestinationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateDestinationStateErrorImplCopyWith<_$CreateDestinationStateErrorImpl>
      get copyWith => __$$CreateDestinationStateErrorImplCopyWithImpl<
          _$CreateDestinationStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DestinationFailure failure) error,
    required TResult Function() success,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DestinationFailure failure)? error,
    TResult? Function()? success,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DestinationFailure failure)? error,
    TResult Function()? success,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(CreateDestinationStateLoading value) loading,
    required TResult Function(CreateDestinationStateError value) error,
    required TResult Function(CreateDestinationStateSuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CreateDestinationStateLoading value)? loading,
    TResult? Function(CreateDestinationStateError value)? error,
    TResult? Function(CreateDestinationStateSuccess value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateDestinationStateLoading value)? loading,
    TResult Function(CreateDestinationStateError value)? error,
    TResult Function(CreateDestinationStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateDestinationStateError implements CreateDestinationState {
  const factory CreateDestinationStateError(final DestinationFailure failure) =
      _$CreateDestinationStateErrorImpl;

  DestinationFailure get failure;

  /// Create a copy of CreateDestinationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateDestinationStateErrorImplCopyWith<_$CreateDestinationStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateDestinationStateSuccessImplCopyWith<$Res> {
  factory _$$CreateDestinationStateSuccessImplCopyWith(
          _$CreateDestinationStateSuccessImpl value,
          $Res Function(_$CreateDestinationStateSuccessImpl) then) =
      __$$CreateDestinationStateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateDestinationStateSuccessImplCopyWithImpl<$Res>
    extends _$CreateDestinationStateCopyWithImpl<$Res,
        _$CreateDestinationStateSuccessImpl>
    implements _$$CreateDestinationStateSuccessImplCopyWith<$Res> {
  __$$CreateDestinationStateSuccessImplCopyWithImpl(
      _$CreateDestinationStateSuccessImpl _value,
      $Res Function(_$CreateDestinationStateSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateDestinationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CreateDestinationStateSuccessImpl
    implements CreateDestinationStateSuccess {
  const _$CreateDestinationStateSuccessImpl();

  @override
  String toString() {
    return 'CreateDestinationState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateDestinationStateSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DestinationFailure failure) error,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DestinationFailure failure)? error,
    TResult? Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DestinationFailure failure)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CreateDestinationStateLoading value) loading,
    required TResult Function(CreateDestinationStateError value) error,
    required TResult Function(CreateDestinationStateSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CreateDestinationStateLoading value)? loading,
    TResult? Function(CreateDestinationStateError value)? error,
    TResult? Function(CreateDestinationStateSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateDestinationStateLoading value)? loading,
    TResult Function(CreateDestinationStateError value)? error,
    TResult Function(CreateDestinationStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CreateDestinationStateSuccess implements CreateDestinationState {
  const factory CreateDestinationStateSuccess() =
      _$CreateDestinationStateSuccessImpl;
}
