import 'package:flutter/material.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/destination_entity.dart';

class DestinationModel {
  final String id;
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
    required this.id,
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
    final bool isDesktop = MediaQuery.of(context).size.width > 1024;
    return DestinationModel(
      id: id,
      countryFrom: isDesktop
          ? 'Desde un lugar muy lejano $countryFrom a'
          : 'Desde $countryFrom a',
      countryTo: countryTo,
      imageCountryTo: imageCountryTo,
      primaryPrice: 'USD ${primaryPrice.toStringAsFixed(2)}',
      secondaryPryce:
          isThePriceTheSame() ? '' : 'PEN ${secondaryPrice.toStringAsFixed(2)}',
      priceDiscount: '25% dcto.',
      dateTravel: 'DIC-MAR-ABR',
      infoDestination: 'Tasas incluidas - Vuelo directo - 100 cupos',
      travelMode: 'Ida y vuelta',
      priceMode: 'Economy',
    );
  }
}
