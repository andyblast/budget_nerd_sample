import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;

  static late double mockupHeight = 812;
  static late double mockupWidth = 375;
  static late double scale;
  static late double heightScale;
  static late double textScale;
  static late double widthScale;

  static late double defaultPadding;

  static late double appBarLeadingWidth;

  void init(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData.size.width;
    screenHeight = mediaQueryData.size.height;

    scale = mockupWidth / screenWidth;
    heightScale = screenHeight / mockupHeight;
    textScale = screenWidth / mockupWidth;
    widthScale = screenWidth / mockupWidth;

    defaultPadding = 30.0;

    appBarLeadingWidth = screenWidth / 4;
  }
}
