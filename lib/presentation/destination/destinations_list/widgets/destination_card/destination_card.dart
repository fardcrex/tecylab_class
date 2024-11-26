import 'package:flutter/material.dart';
import 'package:tecylab_clase_04/core/utils/media_query.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/destination_model.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/widgets/destination_card/content_section.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/widgets/destination_card/discount_tool_tip.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/widgets/destination_card/image_section.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/widgets/destination_card/info_date_tool_tip.dart';

class DestinationCard extends StatelessWidget {
  final DestinationModel destination;
  final MediaQueryApp mediaQueryApp;

  const DestinationCard({
    super.key,
    required this.destination,
    required this.mediaQueryApp,
  });

  @override
  Widget build(BuildContext context) {
    return switch (mediaQueryApp) {
      MediaQueryApp.mobile => DestinationCardMobile(destination: destination),
      MediaQueryApp.tablet => DestinationCardTablet(
          destination: destination,
          colorTextTravelTo: Colors.pink,
        ),
      MediaQueryApp.desktop => DestinationCardDesktop(destination: destination),
      MediaQueryApp.desktopXL =>
        DestinationCardDesktopXl(destination: destination),
    };
  }
}

class DestinationCardMobile extends StatelessWidget {
  final DestinationModel destination;

  const DestinationCardMobile({super.key, required this.destination});

  @override
  Widget build(BuildContext context) {
    return DestinationCardBase(
        dateTravel: destination.dateTravel,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
        priceDiscount: destination.priceDiscount,
        child: Column(
          children: [
            ImageSection.mobile(image: destination.imageCountryTo),
            ContentSection(
              hasArrow: false,
              colorTextTravelTo: Colors.red,
              destination: destination,
              isPortrait: true,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
            ),
          ],
        ));
  }
}

class DestinationCardTablet extends StatelessWidget {
  final DestinationModel destination;
  final bool hasArrow;
  final Color colorTextTravelTo;
  const DestinationCardTablet(
      {super.key,
      required this.destination,
      this.hasArrow = false,
      required this.colorTextTravelTo});

  @override
  Widget build(BuildContext context) {
    return DestinationCardBase(
      dateTravel: destination.dateTravel,
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      priceDiscount: destination.priceDiscount,
      child: Row(
        children: [
          ImageSection.nature(image: destination.imageCountryTo),
          Expanded(
            child: ContentSection(
              hasArrow: hasArrow,
              colorTextTravelTo: colorTextTravelTo,
              destination: destination,
              isPortrait: false,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DestinationCardDesktop extends StatelessWidget {
  final DestinationModel destination;
  const DestinationCardDesktop({super.key, required this.destination});

  @override
  Widget build(BuildContext context) {
    return DestinationCardTablet(
      destination: destination,
      colorTextTravelTo: Colors.blue,
      hasArrow: true,
    );
  }
}

class DestinationCardDesktopXl extends StatelessWidget {
  final DestinationModel destination;
  const DestinationCardDesktopXl({super.key, required this.destination});

  @override
  Widget build(BuildContext context) {
    return DestinationCardTablet(
      destination: destination,
      colorTextTravelTo: Colors.green,
      hasArrow: true,
    );
  }
}

class DestinationCardBase extends StatelessWidget {
  final Widget child;
  final String dateTravel;
  final BorderRadius borderRadius;
  final String priceDiscount;
  const DestinationCardBase(
      {super.key,
      required this.child,
      required this.dateTravel,
      required this.priceDiscount,
      required this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IndoDateToolTip(dateText: dateTravel),
              DiscountToolTip(discountText: priceDiscount)
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF6617A3),
              borderRadius: borderRadius,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 0.1,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: child,
          ),
        ],
      ),
    );
  }
}
