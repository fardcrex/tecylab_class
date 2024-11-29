import 'package:flutter/material.dart';

class DestinationLoadingView extends StatelessWidget {
  const DestinationLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
