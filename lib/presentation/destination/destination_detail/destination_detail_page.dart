import 'package:flutter/material.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/destination_model.dart';

class DestinationDetailPage extends StatelessWidget {
  static MaterialPageRoute<String> route(DestinationModel destination) {
    return MaterialPageRoute(
        builder: (_) => DestinationDetailPage(destination: destination));
  }

  final DestinationModel destination;

  const DestinationDetailPage({super.key, required this.destination});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(destination.countryTo),
            FilledButton(
                onPressed: () {
                  Navigator.of(context).pop(destination.primaryPrice);
                },
                child: const Text('Regresar'))
          ],
        ),
      ),
    );
  }
}
