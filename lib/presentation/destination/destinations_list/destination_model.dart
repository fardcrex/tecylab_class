import 'package:flutter/material.dart';
import 'package:tecylab_clase_04/feature/destinations/domain/destination_entity.dart';

class DestinationModel {
  final String countryFrom;
  final String countryTo;
  final String imageCountryTo;
  final String primaryPrice;
  final String secondaryPryce;
  final String priceDiscount;
  final String dateTravel;
  final String infoDestination;
  final String travelMode;
  final String priceMode;

  DestinationModel({
    required this.countryFrom,
    required this.countryTo,
    required this.imageCountryTo,
    required this.primaryPrice,
    required this.secondaryPryce,
    required this.priceDiscount,
    required this.dateTravel,
    required this.infoDestination,
    required this.travelMode,
    required this.priceMode,
  });
}

extension DestinationEntityMapperToModel on DestinationEntity {
  DestinationModel toModel(BuildContext context) {
    return DestinationModel(
      countryFrom: 'Desde Lima a',
      countryTo: name ?? 'Lugar desconocido',
      imageCountryTo: imageUrl,
      primaryPrice: 'USD 290.12',
      secondaryPryce: 'PEN 1,000',
      priceDiscount: '25% dcto.',
      dateTravel: 'DIC-MAR-ABR',
      infoDestination: 'Tasas incluidas - Vuelo directo - 100 cupos',
      travelMode: 'Ida y vuelta',
      priceMode: 'Economy',
    );
  }
}
