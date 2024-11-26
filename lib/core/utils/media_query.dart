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
