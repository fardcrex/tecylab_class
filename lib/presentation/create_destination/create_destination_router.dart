import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tecylab_clase_04/core/router/go_router/go_router_const.dart';
import 'package:tecylab_clase_04/presentation/create_destination/create_destination_page.dart';

class CreateDestinationRouter {
  static const String routeName = GoRouterName.createDestination;
  static const String routePath = GoRouterPath.createDestination;

  static MaterialPageRoute<void> get() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const CreateDestinationPage());
  }

  static Widget Function(BuildContext) get builder =>
      (_) => const CreateDestinationPage();

  static GoRoute get goRouter => GoRoute(
        path: routePath,
        name: routeName,
        builder: (context, state) => const CreateDestinationPage(),
      );
}
