import 'package:flutter/material.dart';
import 'package:tecylab_clase_04/core/theme/tokens/app_colors.dart';
import 'package:tecylab_clase_04/core/theme/tokens/app_typography.dart';
import 'package:themexpert/themexpert.dart';

class AppTheme extends BaseTheme {
  AppTheme(super.context);

  Color get primaryColor => AppColors.primary;

  Color get secondaryColor => AppColors.secondary;

  Color get textColor => AppColors.secondary2;

  Color get warningColor => AppColors.red;

  Color get backgroundScaffold =>
      darkMode ? AppColors.darkLeve : AppColors.lightLeve;

  Color get cardColor => darkMode ? AppColors.dark : AppColors.light;

  Color get successColor => darkMode ? AppColors.greenDark : AppColors.green;

  TextStyle get titleText => AppTypography.titleText.copyWith(
        fontSize: 24,
      );

  TextStyle get errorText => AppTypography.titleText.copyWith(
        fontSize: 24,
        color: AppColors.red,
      );

  TextStyle get destinationText => titleText.copyWith(
        color: darkMode ? AppColors.white : AppColors.secondary,
        fontSize: 20,
      );

  TextStyle get cardText => AppTypography.bodyText.copyWith(
        color: darkMode ? AppColors.blueLight : AppColors.blueDark,
        fontSize: 14,
      );

  bool get isLandscape {
    return MediaQuery.of(context).orientation == Orientation.landscape;
  }

  TextStyle get priceText => AppTypography.nunitoRegular.copyWith(
        fontSize: isLandscape ? 30 : 20,
        fontWeight: FontWeight.bold,
        color: darkMode ? AppColors.red : AppColors.secondary2,
      );

  TextStyle get priceTextFinal => AppTypography.taviraj;
}

AppTheme themeOf(BuildContext context) {
  return ThemeX.ofType<AppTheme>(context);
}
