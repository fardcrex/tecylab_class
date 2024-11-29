import 'package:tecylab_clase_04/feature/destinations/domain/destination_entity.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/destination_model.dart';

sealed class DestinationState {
  DestinationState();
  factory DestinationState.loading() = DestinationLoading;

  factory DestinationState.error(String message) = DestinationError;

  factory DestinationState.success(List<DestinationEntity> destinations) =
      DestinationSuccess;

  factory DestinationState.initial() = DestinationInitial;
}

class DestinationInitial extends DestinationState {}

class DestinationLoading extends DestinationState {
  DestinationLoading();
}

class DestinationError extends DestinationState {
  final String message;

  DestinationError(this.message);
}

class DestinationSuccess extends DestinationState {
  final List<DestinationEntity> destinations;

  DestinationSuccess(this.destinations);
}

final List<DestinationModel> destinations = [
  DestinationModel(
    countryFrom: 'Desde Lima a',
    countryTo: 'Medellín',
    imageCountryTo:
        'https://media.gettyimages.com/id/1171615860/es/foto/plaza-botero-medellin-colombia.jpg?s=612x612&w=gi&k=20&c=G7uBDexCnC0kH_Fph-qXMMcxY4IVhVsOr5b1SK41LoY=',
    primaryPrice: 'USD 290.12',
    secondaryPryce: 'PEN 1,000',
    priceDiscount: '25% dcto.',
    dateTravel: 'DIC-MAR-ABR',
    infoDestination: 'Tasas incluidas - Vuelo directo - 100 cupos',
    travelMode: 'Ida y vuelta',
    priceMode: 'Economy',
  ),
  DestinationModel(
    countryFrom: 'Desde Lima a',
    countryTo: 'Bogotá ciudad de la música y el arte de lo mas diverso',
    imageCountryTo:
        'https://media.gettyimages.com/id/1171615860/es/foto/plaza-botero-medellin-colombia.jpg?s=612x612&w=gi&k=20&c=G7uBDexCnC0kH_Fph-qXMMcxY4IVhVsOr5b1SK41LoY=',
    primaryPrice: 'USD 321.12',
    secondaryPryce: 'PEN 1,215',
    priceDiscount: '20% dcto.',
    dateTravel: 'DIC-MAR-ABR',
    infoDestination: 'Tasas incluidas - Vuelo directo - 100 cupos',
    travelMode: 'Solo Ida',
    priceMode: 'Economy',
  ),
];
