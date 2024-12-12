import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tecylab_clase_04/core/router/go_router/go_router_const.dart';
import 'package:tecylab_clase_04/presentation/create_destination/create_destination_router.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/destination_list_router.dart';
import 'package:tecylab_clase_04/presentation/formularios/formulario_page_router.dart';
import 'package:tecylab_clase_04/presentation/home/home_page.dart';
import 'package:tecylab_clase_04/presentation/router_page/router_page_router.dart';

class GoRouterConfig {
  final GoRouter goRouter;

  GoRouterConfig(this.goRouter);

  factory GoRouterConfig.init() {
    return GoRouterConfig(
      GoRouter(initialLocation: GoRouterPath.home, routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomePage(),
          routes: [
            CreateDestinationRouter.goRouter,
            FormularioPageRouter.goRouter,
            DestinationListRouter.goRouter,
            RuterPageRouter.goRouter,
          ],
        ),
      ]),
    );
  }

  static CustomTransitionPage<void> fadeRoute(
      {required GoRouterState state, required Widget child}) {
    return CustomTransitionPage<void>(
      key: state.pageKey,
      transitionDuration: Duration.zero,
      reverseTransitionDuration: Duration.zero,
      child: child,
      transitionsBuilder: (_, animation, __, child) => FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
  }
}
