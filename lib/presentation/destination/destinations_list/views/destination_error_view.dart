import 'package:flutter/material.dart';
import 'package:tecylab_clase_04/core/theme/app_theme.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/destination_failure.dart';

class DestinationErrorView extends StatelessWidget {
  final DestinationFailure failure;
  final VoidCallback onTap;

  const DestinationErrorView(
      {super.key, required this.failure, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            failure.map(
              serverError: (error) =>
                  error.code >= 500 ? 'Error crítico' : 'Error de servidor',
              timeIsNotEven: (_) => 'Error de tiempo',
              noInternetConnection: (_) => 'Error de conexión',
              unexpectedError: (_) => 'Error inesperado code 1052',
            ),
            style: themeOf(context).errorText,
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: onTap,
            child: Text('Reintentar',
                style: themeOf(context).errorText.copyWith(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}
