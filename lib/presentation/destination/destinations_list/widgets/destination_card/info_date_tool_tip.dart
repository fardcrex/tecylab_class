import 'package:flutter/material.dart';

class IndoDateToolTip extends StatelessWidget {
  final String dateText;
  const IndoDateToolTip({super.key, required this.dateText});

  @override
  Widget build(BuildContext context) {
    const travelInText = 'Viaja en ';

    const colorText = Color(0xFF10044F);

    const double borderRadius = 10;

    return Container(
      height: 30,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
      decoration: const BoxDecoration(
        color: Color(0xFFE3D8FF),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(borderRadius),
          bottomLeft: Radius.circular(borderRadius),
        ),
      ),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(color: colorText),
          children: [
            const TextSpan(text: travelInText),
            TextSpan(
              text: dateText.toLowerCase(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        textScaler: const TextScaler.linear(1.0),
      ),
      /*  Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(travelInText, style: TextStyle(color: colorText)),
          const SizedBox(width: 4),
          Text(
            dateText.toLowerCase(),
            style:
                const TextStyle(fontWeight: FontWeight.bold, color: colorText),
          ),
        ],
      ), */
    );
  }
}
