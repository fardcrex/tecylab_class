import 'package:go_router/go_router.dart';
import 'package:tecylab_clase_04/core/router/go_router/go_router_const.dart';
import 'package:tecylab_clase_04/presentation/destination/destination_detail/destinations_detail_router.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/destinations_list_bloc_page.dart';

class DestinationListRouter {
  static const routeName = GoRouterName.destinationsList;
  static const routePath = GoRouterPath.destinationsList;

  static GoRoute get goRouter => GoRoute(
        path: routePath,
        name: routeName,
        builder: (context, state) => const DestinationsListBlocPage(),
        routes: [DestinationsDetailRouter.goRouter],
      );
}
