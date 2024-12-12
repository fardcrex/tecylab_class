// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'destinations_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DestinationsDto _$DestinationsDtoFromJson(Map<String, dynamic> json) {
  return _DestinationsDto.fromJson(json);
}

/// @nodoc
mixin _$DestinationsDto {
  @JsonKey(name: 'country_from')
  String get countryFrom => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_to')
  String get countryTo => throw _privateConstructorUsedError;
  String get imageCountryTo => throw _privateConstructorUsedError;
  String get primaryPrice => throw _privateConstructorUsedError;
  String get secondaryPryce => throw _privateConstructorUsedError;
  double get priceDiscount => throw _privateConstructorUsedError;
  String get dateTravel => throw _privateConstructorUsedError;
  String get infoDestination => throw _privateConstructorUsedError;
  String get travelMode => throw _privateConstructorUsedError;
  double get priceMode => throw _privateConstructorUsedError;

  /// Serializes this DestinationsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DestinationsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DestinationsDtoCopyWith<DestinationsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DestinationsDtoCopyWith<$Res> {
  factory $DestinationsDtoCopyWith(
          DestinationsDto value, $Res Function(DestinationsDto) then) =
      _$DestinationsDtoCopyWithImpl<$Res, DestinationsDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'country_from') String countryFrom,
      @JsonKey(name: 'country_to') String countryTo,
      String imageCountryTo,
      String primaryPrice,
      String secondaryPryce,
      double priceDiscount,
      String dateTravel,
      String infoDestination,
      String travelMode,
      double priceMode});
}

/// @nodoc
class _$DestinationsDtoCopyWithImpl<$Res, $Val extends DestinationsDto>
    implements $DestinationsDtoCopyWith<$Res> {
  _$DestinationsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DestinationsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryFrom = null,
    Object? countryTo = null,
    Object? imageCountryTo = null,
    Object? primaryPrice = null,
    Object? secondaryPryce = null,
    Object? priceDiscount = null,
    Object? dateTravel = null,
    Object? infoDestination = null,
    Object? travelMode = null,
    Object? priceMode = null,
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
      imageCountryTo: null == imageCountryTo
          ? _value.imageCountryTo
          : imageCountryTo // ignore: cast_nullable_to_non_nullable
              as String,
      primaryPrice: null == primaryPrice
          ? _value.primaryPrice
          : primaryPrice // ignore: cast_nullable_to_non_nullable
              as String,
      secondaryPryce: null == secondaryPryce
          ? _value.secondaryPryce
          : secondaryPryce // ignore: cast_nullable_to_non_nullable
              as String,
      priceDiscount: null == priceDiscount
          ? _value.priceDiscount
          : priceDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      dateTravel: null == dateTravel
          ? _value.dateTravel
          : dateTravel // ignore: cast_nullable_to_non_nullable
              as String,
      infoDestination: null == infoDestination
          ? _value.infoDestination
          : infoDestination // ignore: cast_nullable_to_non_nullable
              as String,
      travelMode: null == travelMode
          ? _value.travelMode
          : travelMode // ignore: cast_nullable_to_non_nullable
              as String,
      priceMode: null == priceMode
          ? _value.priceMode
          : priceMode // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DestinationsDtoImplCopyWith<$Res>
    implements $DestinationsDtoCopyWith<$Res> {
  factory _$$DestinationsDtoImplCopyWith(_$DestinationsDtoImpl value,
          $Res Function(_$DestinationsDtoImpl) then) =
      __$$DestinationsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'country_from') String countryFrom,
      @JsonKey(name: 'country_to') String countryTo,
      String imageCountryTo,
      String primaryPrice,
      String secondaryPryce,
      double priceDiscount,
      String dateTravel,
      String infoDestination,
      String travelMode,
      double priceMode});
}

/// @nodoc
class __$$DestinationsDtoImplCopyWithImpl<$Res>
    extends _$DestinationsDtoCopyWithImpl<$Res, _$DestinationsDtoImpl>
    implements _$$DestinationsDtoImplCopyWith<$Res> {
  __$$DestinationsDtoImplCopyWithImpl(
      _$DestinationsDtoImpl _value, $Res Function(_$DestinationsDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DestinationsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryFrom = null,
    Object? countryTo = null,
    Object? imageCountryTo = null,
    Object? primaryPrice = null,
    Object? secondaryPryce = null,
    Object? priceDiscount = null,
    Object? dateTravel = null,
    Object? infoDestination = null,
    Object? travelMode = null,
    Object? priceMode = null,
  }) {
    return _then(_$DestinationsDtoImpl(
      countryFrom: null == countryFrom
          ? _value.countryFrom
          : countryFrom // ignore: cast_nullable_to_non_nullable
              as String,
      countryTo: null == countryTo
          ? _value.countryTo
          : countryTo // ignore: cast_nullable_to_non_nullable
              as String,
      imageCountryTo: null == imageCountryTo
          ? _value.imageCountryTo
          : imageCountryTo // ignore: cast_nullable_to_non_nullable
              as String,
      primaryPrice: null == primaryPrice
          ? _value.primaryPrice
          : primaryPrice // ignore: cast_nullable_to_non_nullable
              as String,
      secondaryPryce: null == secondaryPryce
          ? _value.secondaryPryce
          : secondaryPryce // ignore: cast_nullable_to_non_nullable
              as String,
      priceDiscount: null == priceDiscount
          ? _value.priceDiscount
          : priceDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      dateTravel: null == dateTravel
          ? _value.dateTravel
          : dateTravel // ignore: cast_nullable_to_non_nullable
              as String,
      infoDestination: null == infoDestination
          ? _value.infoDestination
          : infoDestination // ignore: cast_nullable_to_non_nullable
              as String,
      travelMode: null == travelMode
          ? _value.travelMode
          : travelMode // ignore: cast_nullable_to_non_nullable
              as String,
      priceMode: null == priceMode
          ? _value.priceMode
          : priceMode // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DestinationsDtoImpl implements _DestinationsDto {
  _$DestinationsDtoImpl(
      {@JsonKey(name: 'country_from') required this.countryFrom,
      @JsonKey(name: 'country_to') required this.countryTo,
      required this.imageCountryTo,
      required this.primaryPrice,
      required this.secondaryPryce,
      required this.priceDiscount,
      required this.dateTravel,
      required this.infoDestination,
      required this.travelMode,
      required this.priceMode});

  factory _$DestinationsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DestinationsDtoImplFromJson(json);

  @override
  @JsonKey(name: 'country_from')
  final String countryFrom;
  @override
  @JsonKey(name: 'country_to')
  final String countryTo;
  @override
  final String imageCountryTo;
  @override
  final String primaryPrice;
  @override
  final String secondaryPryce;
  @override
  final double priceDiscount;
  @override
  final String dateTravel;
  @override
  final String infoDestination;
  @override
  final String travelMode;
  @override
  final double priceMode;

  @override
  String toString() {
    return 'DestinationsDto(countryFrom: $countryFrom, countryTo: $countryTo, imageCountryTo: $imageCountryTo, primaryPrice: $primaryPrice, secondaryPryce: $secondaryPryce, priceDiscount: $priceDiscount, dateTravel: $dateTravel, infoDestination: $infoDestination, travelMode: $travelMode, priceMode: $priceMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DestinationsDtoImpl &&
            (identical(other.countryFrom, countryFrom) ||
                other.countryFrom == countryFrom) &&
            (identical(other.countryTo, countryTo) ||
                other.countryTo == countryTo) &&
            (identical(other.imageCountryTo, imageCountryTo) ||
                other.imageCountryTo == imageCountryTo) &&
            (identical(other.primaryPrice, primaryPrice) ||
                other.primaryPrice == primaryPrice) &&
            (identical(other.secondaryPryce, secondaryPryce) ||
                other.secondaryPryce == secondaryPryce) &&
            (identical(other.priceDiscount, priceDiscount) ||
                other.priceDiscount == priceDiscount) &&
            (identical(other.dateTravel, dateTravel) ||
                other.dateTravel == dateTravel) &&
            (identical(other.infoDestination, infoDestination) ||
                other.infoDestination == infoDestination) &&
            (identical(other.travelMode, travelMode) ||
                other.travelMode == travelMode) &&
            (identical(other.priceMode, priceMode) ||
                other.priceMode == priceMode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      countryFrom,
      countryTo,
      imageCountryTo,
      primaryPrice,
      secondaryPryce,
      priceDiscount,
      dateTravel,
      infoDestination,
      travelMode,
      priceMode);

  /// Create a copy of DestinationsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DestinationsDtoImplCopyWith<_$DestinationsDtoImpl> get copyWith =>
      __$$DestinationsDtoImplCopyWithImpl<_$DestinationsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DestinationsDtoImplToJson(
      this,
    );
  }
}

abstract class _DestinationsDto implements DestinationsDto {
  factory _DestinationsDto(
      {@JsonKey(name: 'country_from') required final String countryFrom,
      @JsonKey(name: 'country_to') required final String countryTo,
      required final String imageCountryTo,
      required final String primaryPrice,
      required final String secondaryPryce,
      required final double priceDiscount,
      required final String dateTravel,
      required final String infoDestination,
      required final String travelMode,
      required final double priceMode}) = _$DestinationsDtoImpl;

  factory _DestinationsDto.fromJson(Map<String, dynamic> json) =
      _$DestinationsDtoImpl.fromJson;

  @override
  @JsonKey(name: 'country_from')
  String get countryFrom;
  @override
  @JsonKey(name: 'country_to')
  String get countryTo;
  @override
  String get imageCountryTo;
  @override
  String get primaryPrice;
  @override
  String get secondaryPryce;
  @override
  double get priceDiscount;
  @override
  String get dateTravel;
  @override
  String get infoDestination;
  @override
  String get travelMode;
  @override
  double get priceMode;

  /// Create a copy of DestinationsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DestinationsDtoImplCopyWith<_$DestinationsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
