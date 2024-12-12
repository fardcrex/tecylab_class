// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'destination_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DestinationDto _$DestinationDtoFromJson(Map<String, dynamic> json) {
  return _DestinationDto.fromJson(json);
}

/// @nodoc
mixin _$DestinationDto {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_from')
  String get countryFrom => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_to')
  String get countryTo => throw _privateConstructorUsedError;
  String? get imageCountryTo => throw _privateConstructorUsedError;
  double? get primaryPrice => throw _privateConstructorUsedError;
  double? get secondaryPrice => throw _privateConstructorUsedError;
  double? get priceDiscount => throw _privateConstructorUsedError;
  String? get dateTravel => throw _privateConstructorUsedError;
  String? get infoDestination => throw _privateConstructorUsedError;
  String? get travelMode => throw _privateConstructorUsedError;
  double? get priceMode => throw _privateConstructorUsedError;

  /// Serializes this DestinationDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DestinationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DestinationDtoCopyWith<DestinationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DestinationDtoCopyWith<$Res> {
  factory $DestinationDtoCopyWith(
          DestinationDto value, $Res Function(DestinationDto) then) =
      _$DestinationDtoCopyWithImpl<$Res, DestinationDto>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'country_from') String countryFrom,
      @JsonKey(name: 'country_to') String countryTo,
      String? imageCountryTo,
      double? primaryPrice,
      double? secondaryPrice,
      double? priceDiscount,
      String? dateTravel,
      String? infoDestination,
      String? travelMode,
      double? priceMode});
}

/// @nodoc
class _$DestinationDtoCopyWithImpl<$Res, $Val extends DestinationDto>
    implements $DestinationDtoCopyWith<$Res> {
  _$DestinationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DestinationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? countryFrom = null,
    Object? countryTo = null,
    Object? imageCountryTo = freezed,
    Object? primaryPrice = freezed,
    Object? secondaryPrice = freezed,
    Object? priceDiscount = freezed,
    Object? dateTravel = freezed,
    Object? infoDestination = freezed,
    Object? travelMode = freezed,
    Object? priceMode = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      countryFrom: null == countryFrom
          ? _value.countryFrom
          : countryFrom // ignore: cast_nullable_to_non_nullable
              as String,
      countryTo: null == countryTo
          ? _value.countryTo
          : countryTo // ignore: cast_nullable_to_non_nullable
              as String,
      imageCountryTo: freezed == imageCountryTo
          ? _value.imageCountryTo
          : imageCountryTo // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryPrice: freezed == primaryPrice
          ? _value.primaryPrice
          : primaryPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      secondaryPrice: freezed == secondaryPrice
          ? _value.secondaryPrice
          : secondaryPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      priceDiscount: freezed == priceDiscount
          ? _value.priceDiscount
          : priceDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      dateTravel: freezed == dateTravel
          ? _value.dateTravel
          : dateTravel // ignore: cast_nullable_to_non_nullable
              as String?,
      infoDestination: freezed == infoDestination
          ? _value.infoDestination
          : infoDestination // ignore: cast_nullable_to_non_nullable
              as String?,
      travelMode: freezed == travelMode
          ? _value.travelMode
          : travelMode // ignore: cast_nullable_to_non_nullable
              as String?,
      priceMode: freezed == priceMode
          ? _value.priceMode
          : priceMode // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DestinationDtoImplCopyWith<$Res>
    implements $DestinationDtoCopyWith<$Res> {
  factory _$$DestinationDtoImplCopyWith(_$DestinationDtoImpl value,
          $Res Function(_$DestinationDtoImpl) then) =
      __$$DestinationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'country_from') String countryFrom,
      @JsonKey(name: 'country_to') String countryTo,
      String? imageCountryTo,
      double? primaryPrice,
      double? secondaryPrice,
      double? priceDiscount,
      String? dateTravel,
      String? infoDestination,
      String? travelMode,
      double? priceMode});
}

/// @nodoc
class __$$DestinationDtoImplCopyWithImpl<$Res>
    extends _$DestinationDtoCopyWithImpl<$Res, _$DestinationDtoImpl>
    implements _$$DestinationDtoImplCopyWith<$Res> {
  __$$DestinationDtoImplCopyWithImpl(
      _$DestinationDtoImpl _value, $Res Function(_$DestinationDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DestinationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? countryFrom = null,
    Object? countryTo = null,
    Object? imageCountryTo = freezed,
    Object? primaryPrice = freezed,
    Object? secondaryPrice = freezed,
    Object? priceDiscount = freezed,
    Object? dateTravel = freezed,
    Object? infoDestination = freezed,
    Object? travelMode = freezed,
    Object? priceMode = freezed,
  }) {
    return _then(_$DestinationDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      countryFrom: null == countryFrom
          ? _value.countryFrom
          : countryFrom // ignore: cast_nullable_to_non_nullable
              as String,
      countryTo: null == countryTo
          ? _value.countryTo
          : countryTo // ignore: cast_nullable_to_non_nullable
              as String,
      imageCountryTo: freezed == imageCountryTo
          ? _value.imageCountryTo
          : imageCountryTo // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryPrice: freezed == primaryPrice
          ? _value.primaryPrice
          : primaryPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      secondaryPrice: freezed == secondaryPrice
          ? _value.secondaryPrice
          : secondaryPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      priceDiscount: freezed == priceDiscount
          ? _value.priceDiscount
          : priceDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      dateTravel: freezed == dateTravel
          ? _value.dateTravel
          : dateTravel // ignore: cast_nullable_to_non_nullable
              as String?,
      infoDestination: freezed == infoDestination
          ? _value.infoDestination
          : infoDestination // ignore: cast_nullable_to_non_nullable
              as String?,
      travelMode: freezed == travelMode
          ? _value.travelMode
          : travelMode // ignore: cast_nullable_to_non_nullable
              as String?,
      priceMode: freezed == priceMode
          ? _value.priceMode
          : priceMode // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DestinationDtoImpl implements _DestinationDto {
  _$DestinationDtoImpl(
      {required this.id,
      @JsonKey(name: 'country_from') required this.countryFrom,
      @JsonKey(name: 'country_to') required this.countryTo,
      this.imageCountryTo,
      this.primaryPrice,
      this.secondaryPrice,
      this.priceDiscount,
      this.dateTravel,
      this.infoDestination,
      this.travelMode,
      this.priceMode});

  factory _$DestinationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DestinationDtoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'country_from')
  final String countryFrom;
  @override
  @JsonKey(name: 'country_to')
  final String countryTo;
  @override
  final String? imageCountryTo;
  @override
  final double? primaryPrice;
  @override
  final double? secondaryPrice;
  @override
  final double? priceDiscount;
  @override
  final String? dateTravel;
  @override
  final String? infoDestination;
  @override
  final String? travelMode;
  @override
  final double? priceMode;

  @override
  String toString() {
    return 'DestinationDto(id: $id, countryFrom: $countryFrom, countryTo: $countryTo, imageCountryTo: $imageCountryTo, primaryPrice: $primaryPrice, secondaryPrice: $secondaryPrice, priceDiscount: $priceDiscount, dateTravel: $dateTravel, infoDestination: $infoDestination, travelMode: $travelMode, priceMode: $priceMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DestinationDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.countryFrom, countryFrom) ||
                other.countryFrom == countryFrom) &&
            (identical(other.countryTo, countryTo) ||
                other.countryTo == countryTo) &&
            (identical(other.imageCountryTo, imageCountryTo) ||
                other.imageCountryTo == imageCountryTo) &&
            (identical(other.primaryPrice, primaryPrice) ||
                other.primaryPrice == primaryPrice) &&
            (identical(other.secondaryPrice, secondaryPrice) ||
                other.secondaryPrice == secondaryPrice) &&
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
      id,
      countryFrom,
      countryTo,
      imageCountryTo,
      primaryPrice,
      secondaryPrice,
      priceDiscount,
      dateTravel,
      infoDestination,
      travelMode,
      priceMode);

  /// Create a copy of DestinationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DestinationDtoImplCopyWith<_$DestinationDtoImpl> get copyWith =>
      __$$DestinationDtoImplCopyWithImpl<_$DestinationDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DestinationDtoImplToJson(
      this,
    );
  }
}

abstract class _DestinationDto implements DestinationDto {
  factory _DestinationDto(
      {required final String id,
      @JsonKey(name: 'country_from') required final String countryFrom,
      @JsonKey(name: 'country_to') required final String countryTo,
      final String? imageCountryTo,
      final double? primaryPrice,
      final double? secondaryPrice,
      final double? priceDiscount,
      final String? dateTravel,
      final String? infoDestination,
      final String? travelMode,
      final double? priceMode}) = _$DestinationDtoImpl;

  factory _DestinationDto.fromJson(Map<String, dynamic> json) =
      _$DestinationDtoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'country_from')
  String get countryFrom;
  @override
  @JsonKey(name: 'country_to')
  String get countryTo;
  @override
  String? get imageCountryTo;
  @override
  double? get primaryPrice;
  @override
  double? get secondaryPrice;
  @override
  double? get priceDiscount;
  @override
  String? get dateTravel;
  @override
  String? get infoDestination;
  @override
  String? get travelMode;
  @override
  double? get priceMode;

  /// Create a copy of DestinationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DestinationDtoImplCopyWith<_$DestinationDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
