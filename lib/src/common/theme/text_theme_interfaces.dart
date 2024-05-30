import 'package:flutter/material.dart';

abstract class TextThemeFactory {
  TextTheme create();

  TextStyle get light;
  TextStyle get regular;
  TextStyle get medium;
  TextStyle get semiBold;
  TextStyle get bold;

  TextStyle get displayLarge;
  TextStyle get displayMedium;
  TextStyle get displaySmall;

  TextStyle get headlineLarge;
  TextStyle get headlineMedium;
  TextStyle get headlineSmall;

  TextStyle get titleLarge;
  TextStyle get titleMediumBold;
  TextStyle get titleMedium;
  TextStyle get titleSmall;
  TextStyle get subtitleLarge;
  TextStyle get subtitleMedium;
  TextStyle get subtitleSmall;

  TextStyle get bodyLarge;
  TextStyle get bodyMedium;
  TextStyle get bodySmall;

  TextStyle get labelLarge;
  TextStyle get labelMedium;
  TextStyle get labelSmall;

  TextStyle get textHint;
  TextStyle get textPrefix;
  TextStyle get textHelper;

  TextStyle get tabBarSelected;
  TextStyle get tabBarUnSelected;

  TextStyle get textTitleGrey;
  TextStyle get textBodyGrey;
  TextStyle get textBodyPrimary;

  TextStyle get textSectionShippingTitle;
  TextStyle get textShippingTagEnable;
  TextStyle get textShippingTagDisable;

  TextStyle get textSectionTitle;
  TextStyle get textSectionContent;
  TextStyle get textSectionSubContent;
  TextStyle get textAmountLarge;

  TextStyle get popupTitle;
  TextStyle get popupContent;

  TextStyle get caption;
}
