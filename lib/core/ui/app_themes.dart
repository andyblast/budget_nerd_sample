import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:theme_provider/theme_provider.dart';

import 'index.dart';

extension CustomColorScheme on ColorScheme {
  // brightness == Brightness.light ? Color() : Color()
  Color get accent => PURPLE_COLOR;
  Color get redMain => RED_MAIN_COLOR;
  Color get greenMain => GREEN_MAIN_COLOR;
  Color get grayMain => GRAY_COLOR;
  Color get appBarText =>
      brightness == Brightness.light ? BLACK_COLOR : GRAY_LIGHT_COLOR;
  Color get separator =>
      brightness == Brightness.light ? Color(0xFFECECEC) : Color(0xFF2B2F34);
  Color get walletBalance =>
      brightness == Brightness.light ? Color(0xFF5C5E61) : Color(0xFF928D8D);
  Color get buttonBorder => brightness == Brightness.light
      ? GRAY_4_COLOR
      : GRAY_GREEN_COLOR.withOpacity(0.2);
  Color get dropDownIcon =>
      brightness == Brightness.light ? GRAY_LIGHT_2_COLOR : GRAY_LIGHT_5_COLOR;
  Color get editIcon => brightness == Brightness.light
      ? GREEN_2_COLOR
      : LIGHT_CYAN.withOpacity(0.5);
  Color get deleteIcon => brightness == Brightness.light
      ? RED_2_COLOR
      : RED_2_COLOR.withOpacity(0.5);
  Color get appBarLeadingWidget =>
      brightness == Brightness.light ? PURPLE_COLOR : WHITE_COLOR;

  Color get datePickerArrow =>
      brightness == Brightness.light ? Color(0xFF858A8F) : Color(0xFF626262);
  Color get datePickerText =>
      brightness == Brightness.light ? Color(0xFF565758) : WHITE_COLOR;

  Color get stubCategoryPlus => brightness == Brightness.light
      ? PURPLE_COLOR
      : Color(0xFFFFFFFF).withOpacity(0.5);
  Color get stubCategoryCircle =>
      brightness == Brightness.light ? PURPLE_COLOR : WHITE_COLOR;
  Color get stubCategoryIcon =>
      brightness == Brightness.light ? WHITE_COLOR : Color(0xFFABB819);

  Color get switcherToggle => GRAY_3_COLOR;
  Color get switcherBorder => GRAY_2_COLOR;
  Color get switcherFirstIconActive => GRAY_2_COLOR;
  Color get switcherFirstIconInactive => BLACK_COLOR;
  Color get switcherSecondIconActive => WHITE_COLOR;
  Color get switcherSecondIconInactive => GRAY_2_COLOR;
  Color get keyboardSystemKeyColor => GRAY_2_COLOR;
  Color get transactionPageDivider => GRAY_4_COLOR;
}

class DarkAppTheme {
  AppTheme get appTheme => AppTheme(
        id: 'dark-theme',
        description: 'Dark App Theme',
        data: ThemeData(
          textTheme: GoogleFonts.montserratTextTheme().copyWith(
            caption: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
            headline1: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
            headline2: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
            ),
            headline3: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
            headline4: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
            ),
            headline5: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            headline6: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            bodyText1: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            bodyText2: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w200,
            ),
          ),
          colorScheme: ColorScheme.dark().copyWith(
            background: BLACK_COLOR,
            onBackground: WHITE_COLOR,
          ),
        ),
      );
}

class LightAppTheme {
  AppTheme get appTheme => AppTheme(
        id: 'light-theme',
        description: 'Light App Theme',
        data: ThemeData(
          textTheme: GoogleFonts.montserratTextTheme().copyWith(
            caption: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
            headline1: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
            headline2: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
            ),
            headline3: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
            headline4: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
            ),
            headline5: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            headline6: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            bodyText1: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            bodyText2: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w200,
            ),
          ),
          colorScheme: ColorScheme.light().copyWith(
            background: WHITE_COLOR,
            onBackground: BLACK_COLOR,
          ),
        ),
      );
}

class WalletAppTheme {
  final DarkThemeColors darkThemeColors = DarkThemeColors();
  final LightThemeColors lightThemeColors = LightThemeColors();

  AppTheme get darkTheme => AppTheme(
        id: 'wallet-dark-theme',
        description: 'Dark Wallet App Theme',
        data: ThemeData(
          colorScheme: ColorScheme(
            // light
            primary: darkThemeColors.primary,
            // dark
            primaryVariant: darkThemeColors.primaryVariant,
            secondary: darkThemeColors.secondary,
            secondaryVariant: darkThemeColors.primaryVariant,
            surface: Colors.white,
            background: BLACK_COLOR,
            error: LIGHT_PINK,
            onPrimary: darkThemeColors.onPrimary,
            onSecondary: darkThemeColors.onSecondary,
            onSurface: Colors.white,
            onBackground: Colors.white,
            onError: Colors.white,
            brightness: Brightness.dark,
          ),
          inputDecorationTheme: InputDecorationTheme(
            labelStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: lightThemeColors.onPrimary.withOpacity(.8),
            ),
          ),
          textTheme: GoogleFonts.robotoTextTheme().copyWith(
            bodyText1: GoogleFonts.roboto(
              color: darkThemeColors.secondary,
              fontWeight: FontWeight.w700,
              fontSize: 22.0,
            ),
            headline2: GoogleFonts.roboto(
              color: darkThemeColors.secondary,
              fontWeight: FontWeight.w700,
              fontSize: 24.0,
              letterSpacing: 1.8,
            ),
            button: GoogleFonts.roboto(
              fontSize: 22.0,
              fontWeight: FontWeight.w700,
              letterSpacing: 3.0,
            ),
            bodyText2: GoogleFonts.roboto(
              color: darkThemeColors.secondary,
            ),
            subtitle1: GoogleFonts.roboto(
              color: darkThemeColors.secondary,
            ),
            subtitle2: GoogleFonts.roboto(
              color: darkThemeColors.secondary,
              letterSpacing: 2.0,
            ),
          ),
          appBarTheme: AppBarTheme(
            color: darkThemeColors.primary,
            iconTheme: IconThemeData(
              size: 20.0,
              color: darkThemeColors.secondary,
            ),
            textTheme: GoogleFonts.robotoTextTheme().copyWith(
              headline6: GoogleFonts.roboto(
                color: darkThemeColors.onPrimary,
                fontSize: 18.0,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.0,
              ),
            ),
          ),
        ),
      );

  AppTheme get lightTheme => AppTheme(
        id: 'wallet-light-theme',
        description: 'Light Wallet App Theme',
        data: ThemeData(
          fontFamily: 'SF-Pro-Display',
          brightness: Brightness.light,
          accentColor: YELLOW_COLOR,
          colorScheme: ColorScheme(
            brightness: Brightness.light,
            background: lightThemeColors.background,
            onBackground: lightThemeColors.onBackground,
            error: LIGHT_PINK,
            primary: lightThemeColors.primary,
            primaryVariant: lightThemeColors.primaryVariant,
            secondary: lightThemeColors.secondary,
            secondaryVariant: lightThemeColors.primaryVariant,
            onPrimary: lightThemeColors.onPrimary,
            onSecondary: lightThemeColors.onSecondary,
            surface: Colors.white,
            onSurface: Colors.white,
            onError: Colors.white,
          ),
          inputDecorationTheme: InputDecorationTheme(
            labelStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: lightThemeColors.onPrimary.withOpacity(.8),
            ),
          ),
          // textTheme: GoogleFonts.montserratTextTheme().copyWith(
          // bodyText1: GoogleFonts.montserrat(
          // color: lightThemeColors.secondary,
          // fontWeight: FontWeight.w700,
          // fontSize: 22.0,
          // ),
          // headline2: GoogleFonts.montserrat(
          // color: lightThemeColors.secondary,
          // fontWeight: FontWeight.w700,
          // fontSize: 24.0,
          // letterSpacing: 1.8,
          // ),
          // button: GoogleFonts.montserrat(
          // fontSize: 22.0,
          // fontWeight: FontWeight.w700,
          // letterSpacing: 3.0,
          // ),
          // bodyText2: GoogleFonts.montserrat(
          // color: lightThemeColors.secondary,
          // ),
          // subtitle1: GoogleFonts.montserrat(
          // color: lightThemeColors.secondary,
          // ),
          // subtitle2: GoogleFonts.montserrat(
          // color: lightThemeColors.secondary,
          // letterSpacing: 2.0,
          // ),
          // ),
          // appBarTheme: AppBarTheme(
          // color: lightThemeColors.primary,
          // iconTheme: IconThemeData(
          // size: 20.0,
          // color: lightThemeColors.secondary,
          // ),
          // textTheme: GoogleFonts.montserratTextTheme().copyWith(
          // headline6: GoogleFonts.montserrat(
          // color: lightThemeColors.onPrimary,
          // fontSize: 18.0,
          // fontWeight: FontWeight.w700,
          // letterSpacing: 1.0,
          // ),
          // ),
          // ),
          // inputDecorationTheme: InputDecorationTheme(
          // labelStyle: GoogleFonts.montserrat(
          // color: lightThemeColors.secondary, fontSize: 18.0),
          // border: OutlineInputBorder(
          // borderSide: BorderSide(),
          // ),
          // ),
        ),
      );
}
