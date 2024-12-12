// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'destinations_dto.freezed.dart';
part 'destinations_dto.g.dart';

@freezed
class DestinationsDto with _$DestinationsDto {
  factory DestinationsDto({
    @JsonKey(name: 'country_from') required String countryFrom,
    @JsonKey(name: 'country_to') required String countryTo,
    required String imageCountryTo,
    required String primaryPrice,
    required String secondaryPryce,
    required double priceDiscount,
    required String dateTravel,
    required String infoDestination,
    required String travelMode,
    required double priceMode,
  }) = _DestinationsDto;

  factory DestinationsDto.fromJson(Map<String, dynamic> json) =>
      _$DestinationsDtoFromJson(json);
}

//json string example
// {
//   "country_from": "Lima",
//   "country_to": "Cusco",
//   "imageCountryTo": "https://www.google.com",
//   "primaryPrice": "USD 290.12",
//   "secondaryPryce": "PEN 1,000",
//   "priceDiscount": 25.0,
//   "date_travel": "DIC-MAR-ABR",
//   "info_destination": "Tasas incluidas - Vuelo directo - 100 cupos",
//   "travel_mode": "Ida y vuelta",
//   "price_mode": 25.0
// }