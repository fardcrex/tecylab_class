import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tecylab_clase_04/core/router/go_router/go_router_const.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/destination_list_router.dart';
import 'package:tecylab_clase_04/presentation/router_page/router_page_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: const Text('Parametros ejemplo'),
            onTap: () {
              context.goNamed(RuterPageRouter.routeName, pathParameters: {
                ParemeterKey.paramId: '1',
                'ejemploId': 'abc',
              }, queryParameters: {
                QueryKey.name: 'Carlos',
                QueryKey.age: '30',
              });
              //Navigator.of(context).popUntil((route) => route.isFirst);
            },
          ),
          ListTile(
            title: const Text('Formularios'),
            onTap: () {
              context.go('/formulario/1');
              //  Navigator.of(context).pushNamed('/formulario/1');
            },
          ),
          ListTile(
            title: const Text('Vuelos'),
            onTap: () {
              context.goNamed(DestinationListRouter.routeName);
              //Navigator.of(context).pushNamed('/vuelos');
            },
          ),
          ListTile(
            title: const Text('Crear Vuelo'),
            onTap: () {
              // context.go(GoRouterPath.createDestination);
              context.goNamed(GoRouterName.createDestination);

              /*  Navigator.of(context)
                  .pushNamed(CreateDestinationRouter.routeName); */
              // Navigator.of(context).push(CreateDestinationRouter.get());
            },
          ),
          ListTile(
            title: const Text('Ir a home v2'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(
                '/homeV2',
                arguments: DataExample(name: 'Juan', age: 30),
              );
            },
          ),
        ],
      ),
    );
  }
}

class DataExample {
  final String name;
  final int age;

  DataExample({required this.name, required this.age});
}
