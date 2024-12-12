import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tecylab_clase_04/core/router/go_router/go_router_const.dart';
import 'package:tecylab_clase_04/core/utils/media_query.dart';
import 'package:tecylab_clase_04/presentation/destination/destination_detail/destinations_detail_router.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/destination_model.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/widgets/widgets.dart';

class DestinationDataView extends StatelessWidget {
  final List<DestinationModel> destinations;

  const DestinationDataView({super.key, required this.destinations});

  @override
  Widget build(BuildContext context) {
    final mediaQueryApp = getMediaQueryApp(context);

    return Container(
      padding: const EdgeInsets.all(8),
      width: double.infinity,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: destinations
            .map((destination) => GestureDetector(
                  onTap: () async {
                    void showSnackBar(String message) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(message)),
                      );
                    }

                    //   final route = DestinationDetailPage.route(destination);

                    /*    final price = await Navigator.of(context)
                        .pushNamed('/vuelo_detail', arguments: destination.id); */

                    context.goNamed(DestinationsDetailRouter.routeName,
                        pathParameters: {
                          ParemeterKey.destinationId: destination.id.toString(),
                        });

                    //  showSnackBar('El precio es $price');
                  },
                  child: DestinationCard(
                    destination: destination,
                    mediaQueryApp: mediaQueryApp,
                  ),
                ))
            .toList(),
      ),
    );
  }
}
