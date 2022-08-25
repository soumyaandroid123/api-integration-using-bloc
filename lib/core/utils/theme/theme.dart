import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiple_user_bloc/core/utils/constants.dart';
import 'package:multiple_user_bloc/core/utils/theme/typography.dart';

class AppTheme {
  AppTheme._();

  /// Light Theme
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: AppTypography.fontFamily,
    canvasColor: UIConstants.scafoldBackgroundColor,
    backgroundColor: UIConstants.scafoldBackgroundColor,
    primaryColor: UIConstants.blueIconColor,
    scaffoldBackgroundColor: UIConstants.scafoldBackgroundColor,
    cardColor: UIConstants.whiteColor,
    dividerColor: UIConstants.greyColor,
    appBarTheme: AppBarTheme(color: UIConstants.scafoldBackgroundColor),
    textTheme: GoogleFonts.montserratTextTheme().copyWith(
      headlineLarge: AppTypography.headlineTextStyle,
      titleLarge: AppTypography.largeTitleTextStyle,
      titleMedium: AppTypography.mediumTitleTextStyle,
      titleSmall: AppTypography.smallTitleTextStyle,
      bodyLarge: AppTypography.largeBodyTextStyle,
      bodyMedium: AppTypography.mediumBodyTextStyle,
      bodySmall: AppTypography.smallBodyTextStyle,
      labelLarge: AppTypography.labelTextStyle,
    ),
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
  );
}

extension ThemeDataX on ThemeData {
  /// Current brightness
  bool get isDark => brightness == Brightness.dark;

  /// Primary textstyle should be used from ThemeDefined themedata

  /// Secondary font color according to theme mode
  Color get secondaryFontColor => UIConstants.lightThemeSecondaryFontColor;

  /// Tertiary font color according to theme mode
  Color get tertiaryFontColor => UIConstants.lightThemeTertiaryFontColor;

  /// Headline textstyle with secondary content color
  TextStyle get headlineTitleSecondaryTextStyle =>
      AppTypography.headlineTextStyle.copyWith(
        color: secondaryFontColor,
      );

  /// Headline textstyle with tertiary content color
  TextStyle get headlineTitleTertiaryTextStyle =>
      AppTypography.headlineTextStyle.copyWith(
        color: tertiaryFontColor,
      );

  /// Large title textstyle with secondary content color
  TextStyle get largeTitleSecondaryTextStyle =>
      AppTypography.largeTitleTextStyle.copyWith(
        color: secondaryFontColor,
      );

  /// Large title textstyle with tertiary content color
  TextStyle get largeTitleTertiaryTextStyle =>
      AppTypography.largeTitleTextStyle.copyWith(
        color: tertiaryFontColor,
      );

  /// Medium title textstyle with secondary content color
  TextStyle get mediumTitleSecondaryTextStyle =>
      AppTypography.mediumTitleTextStyle.copyWith(
        color: secondaryFontColor,
      );

  /// Medium title textstyle with tertiary content color
  TextStyle get mediumTitleTertiaryTextStyle =>
      AppTypography.mediumTitleTextStyle.copyWith(
        color: tertiaryFontColor,
      );

  /// Small title textstyle with secondary content color
  TextStyle get smallTitleSecondaryTextStyle =>
      AppTypography.smallTitleTextStyle.copyWith(
        color: secondaryFontColor,
      );

  /// Small title textstyle with tertiary content color
  TextStyle get smallTitleTertiaryTextStyle =>
      AppTypography.smallTitleTextStyle.copyWith(
        color: tertiaryFontColor,
      );

  /// Large body textstyle with secondary content color
  TextStyle get largeBodySecondaryTextStyle =>
      AppTypography.largeBodyTextStyle.copyWith(
        color: secondaryFontColor,
      );

  /// Large body textstyle with tertiary content color
  TextStyle get largeBodyTertiaryTextStyle =>
      AppTypography.largeBodyTextStyle.copyWith(
        color: tertiaryFontColor,
      );

  /// Medium body textstyle with secondary content color
  TextStyle get mediumBodySecondaryTextStyle =>
      AppTypography.mediumBodyTextStyle.copyWith(
        color: secondaryFontColor,
      );

  /// Medium body textstyle with tertiary content color
  TextStyle get mediumBodyTertiaryTextStyle =>
      AppTypography.mediumBodyTextStyle.copyWith(
        color: tertiaryFontColor,
      );

  /// Small body textstyle with secondary content color
  TextStyle get smallBodySecondaryTextStyle =>
      AppTypography.smallBodyTextStyle.copyWith(
        color: secondaryFontColor,
      );

  /// Small body textstyle with tertiary content color
  TextStyle get smallBodyTertiaryTextStyle =>
      AppTypography.smallBodyTextStyle.copyWith(
        color: tertiaryFontColor,
      );

  /// Label textstyle with secondary content color
  TextStyle get labelSecondaryTextStyle =>
      AppTypography.labelTextStyle.copyWith(
        color: secondaryFontColor,
      );

  /// Label textstyle with tertiary content color
  TextStyle get labelTertiaryTextStyle => AppTypography.labelTextStyle.copyWith(
        color: tertiaryFontColor,
      );
}
