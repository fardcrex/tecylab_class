import 'package:flutter/material.dart';
import 'package:tecylab_clase_04/core/theme/app_theme.dart';

class DestinationInitialView extends StatelessWidget {
  final VoidCallback onTap;
  const DestinationInitialView({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          Text(
            'Bienvenido a Tecylab Fly',
            style: themeOf(context).titleText,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: onTap,
            child: const Text('Ver destinos'),
          ),
        ],
      ),
    );
  }
}
