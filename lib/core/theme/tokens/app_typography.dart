import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTypography {
  static const TextStyle baseText = TextStyle(
    fontSize: 16,
    fontFamily: 'Bokor-Regular',
  );

  static const TextStyle titleText = TextStyle(
    fontSize: 24,
    fontFamily: 'EduAUVIC',
  );

  static const TextStyle bodyText = TextStyle(
    fontSize: 16,
  );

  static const TextStyle subtitleText = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: 'EduAUVIC',
  );

  //NUNITO
  static final TextStyle nunitoRegular = GoogleFonts.nunito(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle taviraj = GoogleFonts.taviraj(
    fontSize: 14,
    color: Colors.grey.shade600,
  );
}
