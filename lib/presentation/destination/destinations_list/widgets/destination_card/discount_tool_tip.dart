import 'package:flutter/material.dart';

class DiscountToolTip extends StatelessWidget {
  final String discountText;

  const DiscountToolTip({super.key, required this.discountText});

  @override
  Widget build(BuildContext context) {
    const double borderRadius = 10;
    final colorSheme = Theme.of(context).colorScheme;
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Color(0xFFE3D8FF),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(borderRadius),
        ),
      ),
      child: Container(
        height: 30,
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
        decoration: BoxDecoration(
          color: colorSheme.primary,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(borderRadius),
              bottomLeft: Radius.circular(borderRadius),
              topRight: Radius.circular(borderRadius)),
        ),
        child: Text(discountText,
            style: const TextStyle(fontSize: 14, color: Colors.white)),
      ),
    );
  }
}
