import 'package:flutter/material.dart';
import 'package:tecylab_clase_04/core/router/go_router/go_router_config.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/infraestructure/mock_destination_repository.dart';
import 'package:tecylab_clase_04/presentation/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final destinationRepository = MockDestinationRepository();

  runApp(MyApp(
    router: GoRouterConfig.init(),
    destinationRepository: destinationRepository,
  ));
}
