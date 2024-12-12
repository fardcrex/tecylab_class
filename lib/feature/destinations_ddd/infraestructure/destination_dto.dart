// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'destination_dto.freezed.dart';
part 'destination_dto.g.dart';

@freezed
class DestinationDto with _$DestinationDto {
  factory DestinationDto({
    required String id,
    @JsonKey(name: 'country_from') required String countryFrom,
    @JsonKey(name: 'country_to') required String countryTo,
    String? imageCountryTo,
    double? primaryPrice,
    double? secondaryPrice,
    double? priceDiscount,
    String? dateTravel,
    String? infoDestination,
    String? travelMode,
    double? priceMode,
  }) = _DestinationDto;

  factory DestinationDto.fromJson(Map<String, dynamic> json) =>
      _$DestinationDtoFromJson(json);
}
