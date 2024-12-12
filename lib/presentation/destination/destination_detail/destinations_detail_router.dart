import 'package:go_router/go_router.dart';
import 'package:tecylab_clase_04/core/router/go_router/go_router_config.dart';
import 'package:tecylab_clase_04/core/router/go_router/go_router_const.dart';
import 'package:tecylab_clase_04/presentation/destination/destination_detail/destination_detail_page.dart';

class DestinationsDetailRouter {
  static const routeName = GoRouterName.detailDestination;
  static const routePath = GoRouterPath.detailDestination;

  static GoRoute get goRouter => GoRoute(
        path: '/:${ParemeterKey.destinationId}',
        name: routeName,
        /*  builder: (context, state) {
          return DestinationDetailPage(
            destinationId: state.pathParameters[ParemeterKey.destinationId],
          );
        }, */
        pageBuilder: (context, state) {
          return GoRouterConfig.fadeRoute(
            state: state,
            child: DestinationDetailPage(
              destinationId: state.pathParameters[ParemeterKey.destinationId],
            ),
          );
        },
        routes: const [],
      );
}
