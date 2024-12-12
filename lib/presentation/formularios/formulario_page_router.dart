import 'package:go_router/go_router.dart';
import 'package:tecylab_clase_04/core/router/go_router/go_router_const.dart';
import 'package:tecylab_clase_04/presentation/formularios/formulario_page.dart';

class FormularioPageRouter {
  static const String routeName = GoRouterName.formulario;

  static const String routePath =
      '${GoRouterPath.formulario}/:${ParemeterKey.formularioId}';

  static GoRoute get goRouter => GoRoute(
      path: routePath,
      name: routeName,
      builder: (context, state) {
        final id = state.pathParameters[ParemeterKey.formularioId];

        final pageLevel = int.tryParse(id ?? '0') ?? 0;

        return FormularioPage(levelPage: pageLevel);
      },
      routes: const []);
}
