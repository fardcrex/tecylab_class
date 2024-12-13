// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'destination_dto.freezed.dart';
part 'destination_dto.g.dart';

@freezed
class DestinationDto with _$DestinationDto {
  factory DestinationDto({
    required String id,
    required String countryFrom,
    required String countryTo,
    String? imageCountryTo,
    double? primaryPrice,
    double? discount,
    String? travelMode,
    String? priceMode,
  }) = _DestinationDto;

  factory DestinationDto.fromJson(Map<String, dynamic> json) =>
      _$DestinationDtoFromJson(json);

  factory DestinationDto.fromSembast(Map<String, dynamic> json, String id) {
    return DestinationDto.fromJson({
      ...json,
      'id': id,
    });
  }
}
