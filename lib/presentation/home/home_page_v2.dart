import 'package:flutter/material.dart';
import 'package:tecylab_clase_04/presentation/home/home_page.dart';

class HomePageV2 extends StatelessWidget {
  const HomePageV2({super.key});

  @override
  Widget build(BuildContext context) {
    final routeArgument =
        ModalRoute.of(context)!.settings.arguments as DataExample?;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page V2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (routeArgument != null) Text('Nombre: ${routeArgument.name}'),
            if (routeArgument != null) Text('Edad: ${routeArgument.age}'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/');
              },
              child: const Text('Regresar'),
            ),
          ],
        ),
      ),
    );
  }
}
