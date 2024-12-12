import 'package:tecylab_clase_04/presentation/create_destination/create_destination_router.dart';
import 'package:tecylab_clase_04/presentation/destination/destination_detail/destination_detail_page.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/destinations_list_bloc_page.dart';
import 'package:tecylab_clase_04/presentation/formularios/formulario_page.dart';
import 'package:tecylab_clase_04/presentation/home/home_page.dart';
import 'package:tecylab_clase_04/presentation/home/home_page_v2.dart';

final tecylabRoutes = {
  '/': (context) => const HomePage(),
  '/formulario': (context) => const FormularioPage(levelPage: 0),
  '/homeV2': (context) => const HomePageV2(),
  '/vuelos': (context) => const DestinationsListBlocPage(),
  '/vuelo_detail': (context) => const DestinationDetailPage(destinationId: '1'),
  CreateDestinationRouter.routeName: CreateDestinationRouter.builder,
};
