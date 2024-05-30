import 'package:flutter/material.dart';

import '../../../generated/colors.gen.dart';
import '../../../generated/fonts.gen.dart';
import 'text_theme_interfaces.dart';

class BaseTextThemeFactory implements TextThemeFactory {
  @override
  TextTheme create() {
    return TextTheme(
        displayLarge: displayLarge,
        displayMedium: displayMedium,
        displaySmall: displaySmall,
        headlineLarge: headlineLarge,
        headlineMedium: headlineMedium,
        headlineSmall: headlineSmall,
        titleLarge: titleLarge,
        titleMedium: titleMedium,
        titleSmall: titleSmall,
        bodyLarge: bodyLarge,
        bodyMedium: bodyMedium,
        bodySmall: bodySmall,
        labelLarge: labelLarge,
        labelMedium: labelMedium,
        labelSmall: labelSmall);
  }

  @override
  TextStyle get light => const TextStyle(
        color: ColorName.textPrimary,
        fontSize: 16,
        fontFamily: FontFamily.roboto,
        fontWeight: FontWeight.w300,
        letterSpacing: 0,
      );

  @override
  TextStyle get regular => const TextStyle(
        color: ColorName.textPrimary,
        fontSize: 16,
        fontFamily: FontFamily.roboto,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
      );

  @override
  TextStyle get medium => const TextStyle(
        color: ColorName.textPrimary,
        fontSize: 16,
        fontFamily: FontFamily.roboto,
        fontWeight: FontWeight.w500,
        letterSpacing: 0,
      );

  @override
  TextStyle get semiBold => const TextStyle(
        color: ColorName.textPrimary,
        fontSize: 16,
        fontFamily: FontFamily.roboto,
        fontWeight: FontWeight.w600,
        letterSpacing: 0,
      );

  @override
  TextStyle get bold => const TextStyle(
        color: ColorName.textPrimary,
        fontSize: 16,
        fontFamily: FontFamily.roboto,
        fontWeight: FontWeight.w700,
        letterSpacing: 0,
      );

  @override
  TextStyle get displayLarge => regular.copyWith(fontSize: 57);

  @override
  TextStyle get displayMedium => regular.copyWith(fontSize: 45);

  @override
  TextStyle get displaySmall => regular.copyWith(fontSize: 36);

  @override
  TextStyle get headlineLarge => regular.copyWith(fontSize: 32);

  @override
  TextStyle get headlineMedium => regular.copyWith(fontSize: 28);

  @override
  TextStyle get headlineSmall => regular.copyWith(fontSize: 24);

  @override
  TextStyle get titleLarge => medium.copyWith(fontSize: 22);

  @override
  TextStyle get titleMedium => medium.copyWith(fontSize: 16);

  @override
  TextStyle get titleSmall => medium.copyWith(fontSize: 14);

  @override
  TextStyle get subtitleLarge => medium.copyWith(
        fontSize: 18,
        color: ColorName.textSubTitle,
      );

  @override
  TextStyle get titleMediumBold => bold.copyWith(fontSize: 18);

  @override
  TextStyle get subtitleMedium => regular.copyWith(
        color: ColorName.textSubTitle,
      );

  @override
  TextStyle get subtitleSmall => regular.copyWith(
        fontSize: 14,
        color: ColorName.textSubTitle,
      );

  @override
  TextStyle get bodyLarge => regular.copyWith(fontSize: 22);

  @override
  TextStyle get bodyMedium => regular.copyWith(fontSize: 16);

  @override
  TextStyle get bodySmall => regular.copyWith(fontSize: 14);

  @override
  TextStyle get labelLarge => medium.copyWith(fontSize: 14);

  @override
  TextStyle get labelMedium => medium.copyWith(fontSize: 12);

  @override
  TextStyle get labelSmall => medium.copyWith(fontSize: 11);

  @override
  TextStyle get textHint => bodySmall.copyWith(color: ColorName.textHint);

  @override
  TextStyle get textPrefix => bodySmall.copyWith(color: ColorName.textBlue);

  @override
  TextStyle get textHelper => bodySmall.copyWith(
        fontSize: 12,
        color: ColorName.textSecondary,
      );

  @override
  TextStyle get tabBarSelected => medium;

  @override
  TextStyle get tabBarUnSelected => regular;

  @override
  TextStyle get textTitleGrey => regular.copyWith(color: ColorName.lightGray);

  @override
  TextStyle get textBodyGrey => regular.copyWith(
        color: ColorName.lightGray,
        fontSize: 14,
      );

  @override
  TextStyle get textBodyPrimary => regular.copyWith(
        color: ColorName.primary,
        fontSize: 14,
      );

  @override
  TextStyle get textSectionShippingTitle => bold.copyWith(
        color: ColorName.charcoalGray,
      );

  @override
  TextStyle get textShippingTagEnable => regular.copyWith(
        color: ColorName.textTag,
      );

  @override
  TextStyle get textShippingTagDisable => regular.copyWith(
        color: ColorName.textDisableLight,
      );

  @override
  TextStyle get textSectionTitle => medium.copyWith(
        color: ColorName.charcoalGray,
        fontSize: 18,
      );

  @override
  TextStyle get textSectionContent => regular.copyWith(
        color: ColorName.charcoalGray,
        fontSize: 12,
      );

  @override
  TextStyle get textSectionSubContent => regular.copyWith(
        color: ColorName.charcoalGray,
        fontSize: 10,
      );

  @override
  TextStyle get textAmountLarge => medium.copyWith(
        color: ColorName.charcoalGray,
        fontSize: 48,
        height: 1,
      );

  @override
  TextStyle get popupTitle => medium.copyWith(
        fontSize: 17,
      );

  @override
  TextStyle get popupContent => regular.copyWith(
        fontSize: 13,
      );

  @override
  TextStyle get caption => medium.copyWith(fontSize: 10);
}
