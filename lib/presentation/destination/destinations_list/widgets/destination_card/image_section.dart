import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  final String image;
  final double width;
  final bool hasWrapper;
  const ImageSection(
      {super.key,
      required this.image,
      required this.width,
      required this.hasWrapper});

  const ImageSection.mobile({super.key, required this.image})
      : hasWrapper = false,
        width = double.infinity;

  const ImageSection.nature({super.key, required this.image})
      : hasWrapper = true,
        width = 180;

  @override
  Widget build(BuildContext context) {
    const height = 150.0;

    const borderRadius = BorderRadius.only(
      topLeft: Radius.circular(15),
      bottomLeft: Radius.circular(15),
    );
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Container(
          height: height,
          width: width,
          decoration: const BoxDecoration(
            borderRadius: borderRadius,
            color: Colors.red,
          ),
          child: ClipRRect(
            borderRadius: borderRadius,
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        if (hasWrapper)
          Container(
            height: height,
            width: 15,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
            ),
          ),
      ],
    );
  }
}
