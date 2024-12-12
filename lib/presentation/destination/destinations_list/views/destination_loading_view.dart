import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tecylab_clase_04/core/theme/app_theme.dart';
import 'package:tecylab_clase_04/core/utils/media_query.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/destination_model.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/widgets/destination_card/destination_card.dart';

class DestinationLoadingView extends StatelessWidget {
  const DestinationLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Shimmer.fromColors(
        baseColor: themeOf(context).primaryColor,
        highlightColor: themeOf(context).cardColor,
        period: const Duration(milliseconds: 1500),
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: List.generate(
            10,
            (index) => DestinationCard(
              mediaQueryApp: getMediaQueryApp(context),
              destination: DestinationModel(
                id: '1',
                countryFrom: 'Desde Lima a',
                countryTo: 'Loading...',
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
            ),
          ),
        ),
      ),
    );
  }
}
