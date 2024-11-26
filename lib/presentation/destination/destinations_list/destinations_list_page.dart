import 'package:flutter/material.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/destination_model.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/views/data_destination_view.dart';

class DestinationsListPage extends StatefulWidget {
  const DestinationsListPage({super.key});

  @override
  State<DestinationsListPage> createState() => _DestinationsListPageState();
}

class _DestinationsListPageState extends State<DestinationsListPage> {
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

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Vuelos a todo el mundo',
          style: textTheme.displayLarge,
        ),
      ),
      body: DataDestinationView(destinations: [
        ...destinations,
        ...destinations,
        ...destinations,
      ]),
    );
  }
}
