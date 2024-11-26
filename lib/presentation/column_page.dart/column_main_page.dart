import 'package:flutter/material.dart';
import 'package:tecylab_clase_04/presentation/column_page.dart/widgets/square_example.dart';

class ColumnMain extends StatelessWidget {
  const ColumnMain({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SquareExample(),
            SquareExample(),
            SquareExample(),
            SquareExample(),
            SquareExample(),
          ],
        ),
      ),
    );
  }
}
