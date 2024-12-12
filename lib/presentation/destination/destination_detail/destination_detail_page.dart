import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tecylab_clase_04/core/theme/app_theme.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/bloc/destinations_list_bloc.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/destination_model.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/widgets/destination_card/content_section.dart';

class DestinationDetailPage extends StatelessWidget {
  /* static MaterialPageRoute<String> route(DestinationModel destination) {
    return MaterialPageRoute(
        builder: (_) => DestinationDetailPage(destination: destination));
  } */

  final String? destinationId;

  const DestinationDetailPage({super.key, required this.destinationId});

  @override
  Widget build(BuildContext context) {
    // final destinationId = ModalRoute.of(context)!.settings.arguments as String?;

    /*   if (destinationId == null) {
      return const Scaffold(
        body: Center(child: Text('No se encontró el destino 404')),
      );
    } */

    return BlocSelector<DestinationsListBloc, DestinationsListState,
        DestinationModel?>(
      selector: (state) {
        return state.maybeWhen(
            success: (destinations) {
              try {
                return destinations
                    .firstWhere((element) => element.id == destinationId)
                    .toModel(context);
              } catch (e) {
                return DestinationModel(
                  countryTo: 'No se encontró el destino',
                  primaryPrice: '0',
                  secondaryPryce: '0',
                  infoDestination: 'No se encontró el destino',
                  id: '-1',
                  countryFrom: '',
                  dateTravel: '',
                  imageCountryTo: '',
                  priceDiscount: '',
                  travelMode: '',
                  priceMode: '',
                );
              }
            },
            orElse: () => null);
      },
      builder: (context, destinationOrNull) {
        if (destinationOrNull == null) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(destinationOrNull.countryTo,
                    style: themeOf(context).titleText),
                PriceContent(
                  primaryPriceText: destinationOrNull.primaryPrice,
                  secondaryPriceText: destinationOrNull.secondaryPryce,
                  infoDestinationText: destinationOrNull.infoDestination,
                ),
                FilledButton(
                    onPressed: () {
                      Navigator.of(context).pop(destinationOrNull.primaryPrice);
                    },
                    child: const Text('Regresar'))
              ],
            ),
          ),
        );
      },
    );
  }
}
