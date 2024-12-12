import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tecylab_clase_04/core/router/go_router/go_router_const.dart';
import 'package:tecylab_clase_04/presentation/router_page/router_page.dart';

class RuterPageRouter {
  static const String routeName = GoRouterName.routerParameters;

  static const String routePath =
      '${GoRouterPath.routerParameters}/:${ParemeterKey.paramId}/:ejemploId';

  static GoRoute get goRouter => GoRoute(
      path: routePath,
      name: routeName,
      builder: (context, state) {
        final id = state.pathParameters[ParemeterKey.paramId];

        final ejemploId = state.pathParameters['ejemploId'];

        final pageLevel = int.tryParse(id ?? '0') ?? 0;

        final name = state.uri.queryParameters['name'];

        final age = state.uri.queryParameters['age'];

        final talla = state.uri.queryParameters['talla'];

        return RouterParameterPage(
          key: ValueKey(age),
          levelPage: pageLevel,
          userName: name,
          ejemploId: ejemploId,
          age: age,
          talla: talla,
        );
      },
      routes: const []);
}
