// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destinations_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DestinationsDtoImpl _$$DestinationsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$DestinationsDtoImpl(
      countryFrom: json['country_from'] as String,
      countryTo: json['country_to'] as String,
      imageCountryTo: json['imageCountryTo'] as String,
      primaryPrice: json['primaryPrice'] as String,
      secondaryPryce: json['secondaryPryce'] as String,
      priceDiscount: (json['priceDiscount'] as num).toDouble(),
      dateTravel: json['dateTravel'] as String,
      infoDestination: json['infoDestination'] as String,
      travelMode: json['travelMode'] as String,
      priceMode: (json['priceMode'] as num).toDouble(),
    );

Map<String, dynamic> _$$DestinationsDtoImplToJson(
        _$DestinationsDtoImpl instance) =>
    <String, dynamic>{
      'country_from': instance.countryFrom,
      'country_to': instance.countryTo,
      'imageCountryTo': instance.imageCountryTo,
      'primaryPrice': instance.primaryPrice,
      'secondaryPryce': instance.secondaryPryce,
      'priceDiscount': instance.priceDiscount,
      'dateTravel': instance.dateTravel,
      'infoDestination': instance.infoDestination,
      'travelMode': instance.travelMode,
      'priceMode': instance.priceMode,
    };
