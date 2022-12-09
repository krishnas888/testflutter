// ignore_for_file: deprecated_member_use, duplicate_ignore

import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      cardColor: Colors.white,
      canvasColor: background,
      primaryColor: background,
      primaryColorLight: purpleLight,
      // ignore: deprecated_member_use
      buttonColor: pink,
      accentColor: purpleDarkLight,
      secondaryHeaderColor: purpleDarkLight,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(color: purpleLight),
          toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
          titleTextStyle: Theme.of(context).textTheme.headline6,
          elevation: 0
          ),
      colorScheme:
          ColorScheme.fromSwatch().copyWith(secondary: purpleDarkLight));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        cardColor: darkBackground,
        canvasColor: darkLight,
        accentColor: lightIndigo,
        buttonColor: lightIndigo,
        primaryColor: darkBackground,
        primaryColorLight: lightIndigo,
        secondaryHeaderColor: Colors.white,
        iconTheme: IconThemeData(color: purpleLight),
        appBarTheme: AppBarTheme(
            color: Colors.black,
            elevation: 0.0,
            iconTheme: const IconThemeData(color: Colors.white),
          toolbarTextStyle: Theme.of(context).textTheme.copyWith(headline6: const TextStyle(color: Colors.white)).bodyText2, titleTextStyle: Theme.of(context).textTheme.copyWith(headline6: const TextStyle(color: Colors.white)).headline6,
            ),
      );

  //Colors
  static Color pink = const Color(0xFFD4085D);
  static Color greenLight = const Color(0xFFB7FBA9);
  static Color purpleDarkLight = const Color(0xFF350042);
  static Color background = const Color(0xFFFFFFD7);
  static Color purpleLight = const Color(0xFFA57BC0);
  static Color darkBackground = const Color(0xFF0b0b0b);
  static Color darkLight = const Color(0xFF1E232E);
  static Color lightDark = const Color(0xFF4A4A4A);
  static Color? lightIndigo = Colors.indigo[300];
}
