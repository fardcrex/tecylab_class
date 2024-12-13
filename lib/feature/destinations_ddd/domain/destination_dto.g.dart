// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DestinationDtoImpl _$$DestinationDtoImplFromJson(Map<String, dynamic> json) =>
    _$DestinationDtoImpl(
      id: json['id'] as String,
      countryFrom: json['countryFrom'] as String,
      countryTo: json['countryTo'] as String,
      imageCountryTo: json['imageCountryTo'] as String?,
      primaryPrice: (json['primaryPrice'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      travelMode: json['travelMode'] as String?,
      priceMode: json['priceMode'] as String?,
    );

Map<String, dynamic> _$$DestinationDtoImplToJson(
        _$DestinationDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'countryFrom': instance.countryFrom,
      'countryTo': instance.countryTo,
      'imageCountryTo': instance.imageCountryTo,
      'primaryPrice': instance.primaryPrice,
      'discount': instance.discount,
      'travelMode': instance.travelMode,
      'priceMode': instance.priceMode,
    };
