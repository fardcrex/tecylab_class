import 'package:flutter/material.dart';
import 'package:tecylab_clase_04/core/theme/app_theme.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/destination_model.dart';

class ContentSection extends StatelessWidget {
  final DestinationModel destination;
  final bool isPortrait;
  final bool hasArrow;
  final BorderRadius borderRadius;
  final Color colorTextTravelTo;
  const ContentSection({
    super.key,
    required this.destination,
    required this.isPortrait,
    required this.borderRadius,
    required this.hasArrow,
    required this.colorTextTravelTo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: isPortrait ? null : 150,
        padding: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: themeOf(context).cardColor,
        ),
        child: _MediaRowAndColumn(
          isPortrait: isPortrait,
          children: [
            TravelContent(
              colorText: colorTextTravelTo,
              fromDestinationText: destination.countryFrom,
              toDestinationText: destination.countryTo,
              travelModeText: destination.travelMode,
              priceModeText: destination.priceMode,
            ),
            const SizedBox(height: 10),
            isPortrait
                ? PriceContent(
                    primaryPriceText: destination.primaryPrice,
                    secondaryPriceText: destination.secondaryPryce,
                    infoDestinationText: destination.infoDestination,
                  )
                : Flexible(
                    child: PriceContent(
                    primaryPriceText: destination.primaryPrice,
                    secondaryPriceText: destination.secondaryPryce,
                    infoDestinationText: destination.infoDestination,
                  )),
            if (hasArrow) const IconRightArrow()
          ],
        ));
  }
}

class _MediaRowAndColumn extends StatelessWidget {
  final List<Widget> children;
  final bool isPortrait;
  const _MediaRowAndColumn({required this.children, required this.isPortrait});

  @override
  Widget build(BuildContext context) {
    return isPortrait
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(children: children),
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: children,
          );
  }
}

class IconRightArrow extends StatelessWidget {
  const IconRightArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.fromBorderSide(BorderSide(
          color: Colors.red.shade700,
        )),
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.arrow_forward,
        size: 40,
        color: Colors.red.shade700,
      ),
    );
  }
}

class PriceContent extends StatelessWidget {
  final String primaryPriceText;
  final String secondaryPriceText;
  final String infoDestinationText;

  const PriceContent({
    super.key,
    required this.primaryPriceText,
    required this.secondaryPriceText,
    required this.infoDestinationText,
  });

  @override
  Widget build(BuildContext context) {
    // final textTheme = Theme.of(context).textTheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Precio final desde', style: themeOf(context).cardText),
        PriceText(priceText: primaryPriceText),
        PriceText(priceText: secondaryPriceText),
        const SizedBox(height: 10),
        Text(infoDestinationText, style: themeOf(context).priceTextFinal),
      ],
    );
  }
}

class PriceText extends StatelessWidget {
  final String priceText;

  const PriceText({super.key, required this.priceText});

  @override
  Widget build(BuildContext context) {
    return Text(
      priceText,
      style: themeOf(context).priceText,
    );
  }
}

class TravelContent extends StatelessWidget {
  final String fromDestinationText;
  final String toDestinationText;
  final String travelModeText;
  final String priceModeText;
  final Color colorText;
  const TravelContent({
    super.key,
    required this.fromDestinationText,
    required this.toDestinationText,
    required this.travelModeText,
    required this.priceModeText,
    required this.colorText,
  });

  @override
  Widget build(BuildContext context) {
    final textMainColor = themeOf(context).textColor;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(fromDestinationText, style: themeOf(context).cardText),
        SizedBox(
          width: 200,
          child: Text(
            toDestinationText,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: themeOf(context).destinationText,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            ModeToolTip(
                modeText: travelModeText,
                color: themeOf(context).primaryColor,
                textColor: textMainColor),
            const SizedBox(width: 8),
            ModeToolTip(
                modeText: priceModeText,
                color: themeOf(context).secondaryColor,
                textColor: Colors.white),
          ],
        ),
      ],
    );
  }
}

class ModeToolTip extends StatelessWidget {
  final String modeText;
  final Color color;
  final Color textColor;
  const ModeToolTip(
      {super.key,
      required this.modeText,
      required this.color,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Text(
        modeText,
        style: TextStyle(
          fontSize: 14,
          color: textColor,
        ),
      ),
    );
  }
}
