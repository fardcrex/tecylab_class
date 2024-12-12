import 'package:flutter/material.dart';

class DestinationDetailLoading extends StatelessWidget {
  const DestinationDetailLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
