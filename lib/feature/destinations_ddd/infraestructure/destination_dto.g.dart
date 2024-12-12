// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DestinationDtoImpl _$$DestinationDtoImplFromJson(Map<String, dynamic> json) =>
    _$DestinationDtoImpl(
      id: json['id'] as String,
      countryFrom: json['country_from'] as String,
      countryTo: json['country_to'] as String,
      imageCountryTo: json['imageCountryTo'] as String?,
      primaryPrice: (json['primaryPrice'] as num?)?.toDouble(),
      secondaryPrice: (json['secondaryPrice'] as num?)?.toDouble(),
      priceDiscount: (json['priceDiscount'] as num?)?.toDouble(),
      dateTravel: json['dateTravel'] as String?,
      infoDestination: json['infoDestination'] as String?,
      travelMode: json['travelMode'] as String?,
      priceMode: (json['priceMode'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$DestinationDtoImplToJson(
        _$DestinationDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country_from': instance.countryFrom,
      'country_to': instance.countryTo,
      'imageCountryTo': instance.imageCountryTo,
      'primaryPrice': instance.primaryPrice,
      'secondaryPrice': instance.secondaryPrice,
      'priceDiscount': instance.priceDiscount,
      'dateTravel': instance.dateTravel,
      'infoDestination': instance.infoDestination,
      'travelMode': instance.travelMode,
      'priceMode': instance.priceMode,
    };
