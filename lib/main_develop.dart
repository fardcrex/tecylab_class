import 'package:flutter/material.dart';
import 'package:tecylab_clase_04/core/config/hive/hive_injection.dart';
import 'package:tecylab_clase_04/core/router/go_router/go_router_config.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/infraestructure/hive_destination_repository.dart';
import 'package:tecylab_clase_04/presentation/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final instance = await HiveInjection.getInstance();

  final destinationRepository = HiveDestinationRepository(instance);

  runApp(MyApp(
    router: GoRouterConfig.init(),
    destinationRepository: destinationRepository,
  ));
}
