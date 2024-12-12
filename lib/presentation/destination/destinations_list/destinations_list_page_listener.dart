import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tecylab_clase_04/core/theme/app_theme.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/cubit/destionations_list_cubit.dart';

class DestinationsListPageListener extends StatelessWidget {
  final Widget child;

  const DestinationsListPageListener({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocListener<DestionationsListCubit, DestionationsListState>(
      listenWhen: (previous, current) => previous != current,
      listener: (context, state) {
        if (state case final DestionationsListSuccess success) {
          _showSnackBar(
            context,
            'Destinos cargados correctamente fueron ${success.destinations.length}',
            themeOf(context).successColor,
          );
        }

        if (state case final DestionationsListError error) {
          _showSnackBar(
            context,
            'Hubo error ${error.message}',
            themeOf(context).warningColor,
          );
        }
      },
      child: child,
    );
  }

  void _showSnackBar(BuildContext context, String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: color,
        content: Text(message),
      ),
    );
  }
}
