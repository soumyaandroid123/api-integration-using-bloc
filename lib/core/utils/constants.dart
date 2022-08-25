import 'package:flutter/material.dart';

class UIConstants {
  static const baseMargin = 8.0;
  static const smallBaseRadius = 8.0;
  static const baseRadius = 12.0;
  static const bigBaseRadius = 16.0;
  static const baseIconSize = 24.0;
  static const arrowDownButtonHeight = 25.0;
  static const buttonHeight = 50.0;
  static const buttonShortHeight = 40.0;
  static const lightThemeLightShadowColor = Color(0xffCECECE);
  static const gardientColor1 = Color(0xff25AAE1);
  static const gardientColor2 = Color(0xff48DAE3);
  static const blackColor = Colors.black;
  static const whiteColor = Colors.white;
  static const greyColor = Colors.grey;

  static const scafoldBackgroundColor = Color(0xffE5E5E5);
  static const blueIconColor = Color(0xff29B0E1);

  //theme Colors
  static const lightThemeSecondaryFontColor = Color(0xFF666669);
  static const lightThemeTertiaryFontColor = Color(0xFF9D9FA3);

  static BorderRadius borderRadius = BorderRadius.circular(baseRadius);
  static BorderRadius smallBorderRadius =
      BorderRadius.circular(smallBaseRadius);
  static BorderRadius bigBorderRadius = BorderRadius.circular(bigBaseRadius);

  static BoxShadow shadow() {
    return BoxShadow(
      blurRadius: 10,
      color: lightThemeLightShadowColor,
      offset: const Offset(0, 4),
    );
  }

  static LinearGradient buttonGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      gardientColor1,
      gardientColor2,
    ],
  );

  //* Horizontal Spacing
  static const Widget horizontalSpaceTiny =
      SizedBox(width: UIConstants.baseMargin / 2);
  static const Widget horizontalSpaceSmall =
      SizedBox(width: UIConstants.baseMargin);
  static const Widget horizontalSpaceRegular =
      SizedBox(width: UIConstants.baseMargin * 2);
  static const Widget horizontalSpaceMedium =
      SizedBox(width: UIConstants.baseMargin * 3);
  static const Widget horizontalSpaceLarge =
      SizedBox(width: UIConstants.baseMargin * 4);
  static const Widget bundleHorizontalSpacing =
      SizedBox(width: UIConstants.baseMargin * 1.5);

//* Vertical Spacing
  static const Widget verticalSpaceTiny =
      SizedBox(height: UIConstants.baseMargin / 2);
  static const Widget verticalSpaceSmall =
      SizedBox(height: UIConstants.baseMargin);
  static const Widget verticalSpaceRegular =
      SizedBox(height: UIConstants.baseMargin * 2);
  static const Widget verticalSpaceMedium =
      SizedBox(height: UIConstants.baseMargin * 3);
  static const Widget verticalSpaceLarge =
      SizedBox(height: UIConstants.baseMargin * 4);
  static const Widget bundleVerticalSpacing =
      SizedBox(height: UIConstants.baseMargin * 1.5);
}

const mainColor = Color(0xff202427);
const textColor = Color(0xffCFCAC8);
const textColorTwo = Color(0xffa73823);
Color get lightShimmerBaseColor => Colors.grey.shade300;
Color get lightShimmerHighlightColor => Colors.grey.shade400;
