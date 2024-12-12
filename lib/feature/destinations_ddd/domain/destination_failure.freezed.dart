// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'destination_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DestinationFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int code) serverError,
    required TResult Function() timeIsNotEven,
    required TResult Function(String message) unexpectedError,
    required TResult Function(String message) noInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int code)? serverError,
    TResult? Function()? timeIsNotEven,
    TResult? Function(String message)? unexpectedError,
    TResult? Function(String message)? noInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int code)? serverError,
    TResult Function()? timeIsNotEven,
    TResult Function(String message)? unexpectedError,
    TResult Function(String message)? noInternetConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(TimeIsNotEven value) timeIsNotEven,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(NoInternetConnection value) noInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(TimeIsNotEven value)? timeIsNotEven,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(TimeIsNotEven value)? timeIsNotEven,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DestinationFailureCopyWith<$Res> {
  factory $DestinationFailureCopyWith(
          DestinationFailure value, $Res Function(DestinationFailure) then) =
      _$DestinationFailureCopyWithImpl<$Res, DestinationFailure>;
}

/// @nodoc
class _$DestinationFailureCopyWithImpl<$Res, $Val extends DestinationFailure>
    implements $DestinationFailureCopyWith<$Res> {
  _$DestinationFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DestinationFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, int code});
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$DestinationFailureCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of DestinationFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_$ServerErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ServerErrorImpl implements ServerError {
  const _$ServerErrorImpl(this.message, this.code);

  @override
  final String message;
  @override
  final int code;

  @override
  String toString() {
    return 'DestinationFailure.serverError(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of DestinationFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      __$$ServerErrorImplCopyWithImpl<_$ServerErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int code) serverError,
    required TResult Function() timeIsNotEven,
    required TResult Function(String message) unexpectedError,
    required TResult Function(String message) noInternetConnection,
  }) {
    return serverError(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int code)? serverError,
    TResult? Function()? timeIsNotEven,
    TResult? Function(String message)? unexpectedError,
    TResult? Function(String message)? noInternetConnection,
  }) {
    return serverError?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int code)? serverError,
    TResult Function()? timeIsNotEven,
    TResult Function(String message)? unexpectedError,
    TResult Function(String message)? noInternetConnection,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(TimeIsNotEven value) timeIsNotEven,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(NoInternetConnection value) noInternetConnection,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(TimeIsNotEven value)? timeIsNotEven,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(TimeIsNotEven value)? timeIsNotEven,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements DestinationFailure {
  const factory ServerError(final String message, final int code) =
      _$ServerErrorImpl;

  String get message;
  int get code;

  /// Create a copy of DestinationFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimeIsNotEvenImplCopyWith<$Res> {
  factory _$$TimeIsNotEvenImplCopyWith(
          _$TimeIsNotEvenImpl value, $Res Function(_$TimeIsNotEvenImpl) then) =
      __$$TimeIsNotEvenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimeIsNotEvenImplCopyWithImpl<$Res>
    extends _$DestinationFailureCopyWithImpl<$Res, _$TimeIsNotEvenImpl>
    implements _$$TimeIsNotEvenImplCopyWith<$Res> {
  __$$TimeIsNotEvenImplCopyWithImpl(
      _$TimeIsNotEvenImpl _value, $Res Function(_$TimeIsNotEvenImpl) _then)
      : super(_value, _then);

  /// Create a copy of DestinationFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TimeIsNotEvenImpl implements TimeIsNotEven {
  const _$TimeIsNotEvenImpl();

  @override
  String toString() {
    return 'DestinationFailure.timeIsNotEven()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimeIsNotEvenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int code) serverError,
    required TResult Function() timeIsNotEven,
    required TResult Function(String message) unexpectedError,
    required TResult Function(String message) noInternetConnection,
  }) {
    return timeIsNotEven();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int code)? serverError,
    TResult? Function()? timeIsNotEven,
    TResult? Function(String message)? unexpectedError,
    TResult? Function(String message)? noInternetConnection,
  }) {
    return timeIsNotEven?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int code)? serverError,
    TResult Function()? timeIsNotEven,
    TResult Function(String message)? unexpectedError,
    TResult Function(String message)? noInternetConnection,
    required TResult orElse(),
  }) {
    if (timeIsNotEven != null) {
      return timeIsNotEven();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(TimeIsNotEven value) timeIsNotEven,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(NoInternetConnection value) noInternetConnection,
  }) {
    return timeIsNotEven(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(TimeIsNotEven value)? timeIsNotEven,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
  }) {
    return timeIsNotEven?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(TimeIsNotEven value)? timeIsNotEven,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    required TResult orElse(),
  }) {
    if (timeIsNotEven != null) {
      return timeIsNotEven(this);
    }
    return orElse();
  }
}

abstract class TimeIsNotEven implements DestinationFailure {
  const factory TimeIsNotEven() = _$TimeIsNotEvenImpl;
}

/// @nodoc
abstract class _$$UnexpectedErrorImplCopyWith<$Res> {
  factory _$$UnexpectedErrorImplCopyWith(_$UnexpectedErrorImpl value,
          $Res Function(_$UnexpectedErrorImpl) then) =
      __$$UnexpectedErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnexpectedErrorImplCopyWithImpl<$Res>
    extends _$DestinationFailureCopyWithImpl<$Res, _$UnexpectedErrorImpl>
    implements _$$UnexpectedErrorImplCopyWith<$Res> {
  __$$UnexpectedErrorImplCopyWithImpl(
      _$UnexpectedErrorImpl _value, $Res Function(_$UnexpectedErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of DestinationFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnexpectedErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnexpectedErrorImpl implements UnexpectedError {
  const _$UnexpectedErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'DestinationFailure.unexpectedError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnexpectedErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of DestinationFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnexpectedErrorImplCopyWith<_$UnexpectedErrorImpl> get copyWith =>
      __$$UnexpectedErrorImplCopyWithImpl<_$UnexpectedErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int code) serverError,
    required TResult Function() timeIsNotEven,
    required TResult Function(String message) unexpectedError,
    required TResult Function(String message) noInternetConnection,
  }) {
    return unexpectedError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int code)? serverError,
    TResult? Function()? timeIsNotEven,
    TResult? Function(String message)? unexpectedError,
    TResult? Function(String message)? noInternetConnection,
  }) {
    return unexpectedError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int code)? serverError,
    TResult Function()? timeIsNotEven,
    TResult Function(String message)? unexpectedError,
    TResult Function(String message)? noInternetConnection,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(TimeIsNotEven value) timeIsNotEven,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(NoInternetConnection value) noInternetConnection,
  }) {
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(TimeIsNotEven value)? timeIsNotEven,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
  }) {
    return unexpectedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(TimeIsNotEven value)? timeIsNotEven,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class UnexpectedError implements DestinationFailure {
  const factory UnexpectedError(final String message) = _$UnexpectedErrorImpl;

  String get message;

  /// Create a copy of DestinationFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnexpectedErrorImplCopyWith<_$UnexpectedErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoInternetConnectionImplCopyWith<$Res> {
  factory _$$NoInternetConnectionImplCopyWith(_$NoInternetConnectionImpl value,
          $Res Function(_$NoInternetConnectionImpl) then) =
      __$$NoInternetConnectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NoInternetConnectionImplCopyWithImpl<$Res>
    extends _$DestinationFailureCopyWithImpl<$Res, _$NoInternetConnectionImpl>
    implements _$$NoInternetConnectionImplCopyWith<$Res> {
  __$$NoInternetConnectionImplCopyWithImpl(_$NoInternetConnectionImpl _value,
      $Res Function(_$NoInternetConnectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of DestinationFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NoInternetConnectionImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoInternetConnectionImpl implements NoInternetConnection {
  const _$NoInternetConnectionImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'DestinationFailure.noInternetConnection(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoInternetConnectionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of DestinationFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoInternetConnectionImplCopyWith<_$NoInternetConnectionImpl>
      get copyWith =>
          __$$NoInternetConnectionImplCopyWithImpl<_$NoInternetConnectionImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int code) serverError,
    required TResult Function() timeIsNotEven,
    required TResult Function(String message) unexpectedError,
    required TResult Function(String message) noInternetConnection,
  }) {
    return noInternetConnection(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int code)? serverError,
    TResult? Function()? timeIsNotEven,
    TResult? Function(String message)? unexpectedError,
    TResult? Function(String message)? noInternetConnection,
  }) {
    return noInternetConnection?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int code)? serverError,
    TResult Function()? timeIsNotEven,
    TResult Function(String message)? unexpectedError,
    TResult Function(String message)? noInternetConnection,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(TimeIsNotEven value) timeIsNotEven,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(NoInternetConnection value) noInternetConnection,
  }) {
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(TimeIsNotEven value)? timeIsNotEven,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
  }) {
    return noInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(TimeIsNotEven value)? timeIsNotEven,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class NoInternetConnection implements DestinationFailure {
  const factory NoInternetConnection(final String message) =
      _$NoInternetConnectionImpl;

  String get message;

  /// Create a copy of DestinationFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoInternetConnectionImplCopyWith<_$NoInternetConnectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
