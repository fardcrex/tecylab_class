import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tecylab_clase_04/core/theme/app_theme.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/bloc/destinations_list_bloc.dart';

class ScaffoldDestinations extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  final bool darkMode;
  const ScaffoldDestinations(
      {super.key,
      required this.child,
      required this.onTap,
      required this.darkMode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeOf(context).backgroundScaffold,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:
            Text('Vuelos a todo el mundo', style: themeOf(context).titleText),
        actions: [
          IconButton(
            onPressed: onTap,
            icon: Icon(
              Icons.brightness_4,
              color: darkMode ? Colors.white : Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {
              context
                  .read<DestinationsListBloc>()
                  .add(const DestinationsListEvent.load(withError: true));
            },
            icon: Icon(
              Icons.refresh,
              color: darkMode ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
      body: child,
    );
  }
}
