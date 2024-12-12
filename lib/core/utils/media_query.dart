import 'package:flutter/widgets.dart';

enum MediaQueryApp { mobile, desktop, tablet, desktopXL }

MediaQueryApp getMediaQueryApp(BuildContext context) {
  final width = MediaQuery.of(context).size.width;

  if (width < 600) {
    return MediaQueryApp.mobile;
  }
  if (width < 1200) {
    return MediaQueryApp.tablet;
  }

  if (width < 1600) {
    return MediaQueryApp.desktop;
  }

  return MediaQueryApp.desktopXL;
}

extension DoubleX on double {
  double sizeScaled(
    double screenWidth, {
    required double minSize,
  }) {
    const double minBP = BreakpointValues.mobile;
    const double maxBP = BreakpointValues.desktop;
    final maxSize = this;
    double scaledSize;

    if (screenWidth <= minBP) {
      scaledSize = minSize;
    } else if (screenWidth >= maxBP) {
      scaledSize = maxSize;
    } else {
      final proportion = (screenWidth - minBP) / (maxBP - minBP);
      final calculatedResize = minSize + (maxSize - minSize) * proportion;
      scaledSize = calculatedResize.clamp(minSize, maxSize);
    }

    return scaledSize;
  }
}

class BreakpointValues {
  static const double mobile = 400;
  static const double mobileLarge = 600;
  static const double tablet = 800;
  static const double tabletLarge = 1200;
  static const double desktop = 1200;
}
