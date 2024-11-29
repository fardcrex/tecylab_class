import 'package:flutter/material.dart';
import 'package:tecylab_clase_04/core/theme/app_theme.dart';

class DestinationErrorView extends StatelessWidget {
  final String errorMessage;
  final VoidCallback onTap;

  const DestinationErrorView(
      {super.key, required this.errorMessage, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            errorMessage,
            style: themeOf(context).errorText,
          ),
          ElevatedButton(
            onPressed: onTap,
            child: const Text('Reintentar'),
          ),
        ],
      ),
    );
  }
}
