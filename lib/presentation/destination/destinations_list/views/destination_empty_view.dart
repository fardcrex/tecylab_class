import 'package:flutter/material.dart';
import 'package:tecylab_clase_04/core/theme/app_theme.dart';

class DestinationEmptyView extends StatelessWidget {
  const DestinationEmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'No hay destinos',
        style: themeOf(context).titleText,
      ),
    );
  }
}
