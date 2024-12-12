import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tecylab_clase_04/core/router/go_router/go_router_const.dart';
import 'package:tecylab_clase_04/presentation/router_page/router_page_router.dart';

class RouterParameterPage extends StatefulWidget {
  final int levelPage;
  final String? userName;
  final String? ejemploId;
  final String? age;
  final String? talla;

  const RouterParameterPage({
    super.key,
    required this.levelPage,
    this.ejemploId,
    this.userName,
    this.age,
    this.talla,
  });

  @override
  State<RouterParameterPage> createState() => _RouterParameterPageState();
}

class _RouterParameterPageState extends State<RouterParameterPage> {
  String name = '';

  late final TextEditingController ageController;

  @override
  void initState() {
    ageController = TextEditingController(text: widget.age);
    super.initState();
  }

  @override
  void dispose() {
    ageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Path Paremeter ${widget.levelPage}'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Ejemplo id: ${widget.ejemploId}'),
            const SizedBox(height: 20),
            Text('User name: ${widget.userName}'),
            const SizedBox(height: 20),
            Text('User age: ${widget.age}'),
            const SizedBox(height: 20),
            Text('User talla: ${widget.talla}'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Nombre',
                ),
                onChanged: (value) {
                  name = value;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: ageController,
                decoration: const InputDecoration(
                  hintText: 'Edad',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: ageController.clear,
              child: const Text('Reiniciar'),
            ),
            ElevatedButton(
              onPressed: () {
                context.goNamed(
                  RuterPageRouter.routeName,
                  pathParameters: {
                    ParemeterKey.paramId: '${widget.levelPage + 1}',
                    'ejemploId': '123',
                  },
                  queryParameters: {
                    QueryKey.name: name,
                    QueryKey.age: ageController.text,
                    'talla': '1.80',
                  },
                );
                //   context.go('/formulario/${levelPage + 1}');
                //   Navigator.of(context).pushNamed('/formulario/${levelPage + 1}');
              },
              child: const Text('Avanzar'),
            ),
          ],
        ),
      ),
    );
  }
}
