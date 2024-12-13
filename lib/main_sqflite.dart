import 'package:flutter/material.dart';
import 'package:tecylab_clase_04/core/config/sqflite/sqflite_injection.dart';
import 'package:tecylab_clase_04/core/router/go_router/go_router_config.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/infraestructure/sqflite_destination_repository.dart';
import 'package:tecylab_clase_04/presentation/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final sqlfliteInstance = await SqfliteInjection.getInstance();

  final destinationRepository = SqfliteDestinationRepository(sqlfliteInstance);

  runApp(MyApp(
    router: GoRouterConfig.init(),
    destinationRepository: destinationRepository,
  ));
}
