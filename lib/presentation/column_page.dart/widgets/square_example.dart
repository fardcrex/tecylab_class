import 'dart:math';

import 'package:flutter/material.dart';

class SquareExample extends StatelessWidget {
  const SquareExample({super.key});

  @override
  Widget build(BuildContext context) {
    final widthRamdom50to200 = 50 + (100 * Random().nextDouble());

    return Container(
      width: widthRamdom50to200,
      height: 100,
      color: Colors.blue,
    );
  }
}
