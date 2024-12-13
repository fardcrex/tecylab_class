import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tecylab_clase_04/presentation/create_destination/bloc/create_destination_bloc.dart';

class CreateDestinationPage extends StatefulWidget {
  const CreateDestinationPage({super.key});

  @override
  State<CreateDestinationPage> createState() => _CreateDestinationPageState();
}

class _CreateDestinationPageState extends State<CreateDestinationPage> {
  String countryFrom = '';
  String countryTo = '';
  String primaryPrice = '';
  String secondaryPrice = '';

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateDestinationBloc, CreateDestinationState>(
      listener: (context, state) {
        if (state is CreateDestinationStateSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              backgroundColor: Colors.green,
              content: Text('Destino creado correctamente'),
            ),
          );
          Navigator.of(context).pop();
        }
        if (state is CreateDestinationStateError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.red,
              content: Text(state.failure.map(
                serverError: (error) =>
                    error.code >= 500 ? 'Error crítico' : 'Error de servidor',
                timeIsNotEven: (_) => 'Error de tiempo',
                noInternetConnection: (_) => 'Error de conexión',
                unexpectedError: (_) => 'Error inesperado code 1052',
              )),
            ),
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Crear Destino'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  maxLength: 100,
                  onChanged: (value) {
                    countryFrom = value;
                  },
                  onTapOutside: (event) =>
                      FocusManager.instance.primaryFocus?.unfocus(),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Lugar de origen',
                    hintText: 'Ingrese el lugar de origen',
                    prefixIcon: Icon(Icons.map_sharp),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  maxLength: 100,
                  onChanged: (value) {
                    countryTo = value;
                  },
                  onTapOutside: (event) =>
                      FocusManager.instance.primaryFocus?.unfocus(),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Lugar de destino',
                    hintText: 'Ingrese el lugar de destino',
                    prefixIcon: Icon(Icons.map_sharp),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  onTapOutside: (event) =>
                      FocusManager.instance.primaryFocus?.unfocus(),
                  onChanged: (value) {
                    primaryPrice = value;
                  },
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Precio primario',
                    hintText: 'Ingrese el precio primario',
                    prefixIcon: Icon(Icons.luggage),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  onTapOutside: (event) =>
                      FocusManager.instance.primaryFocus?.unfocus(),
                  onChanged: (value) {
                    secondaryPrice = value;
                  },
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Descuento',
                    hintText: 'Ingrese el descuento',
                    prefixIcon: Icon(Icons.luggage),
                  ),
                ),
              ),
              BlocBuilder<CreateDestinationBloc, CreateDestinationState>(
                builder: (context, state) {
                  if (state is CreateDestinationStateLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  return FilledButton(
                    onPressed: () {
                      context.read<CreateDestinationBloc>().add(
                            CreateDestinationEvent.create(
                              countryFrom: countryFrom,
                              countryTo: countryTo,
                              primaryPrice: double.parse(primaryPrice),
                              discount: double.parse(secondaryPrice),
                            ),
                          );
                    },
                    child: const Text('Crear Destino'),
                  );
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
