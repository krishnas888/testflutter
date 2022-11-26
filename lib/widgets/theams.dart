import 'package:flutter/material.dart';

class MyTheme{
  static ThemeData lightTheam(BuildContext context)=>
      ThemeData(
          primaryColor: background,
      appBarTheme: AppBarTheme(
        color: purpleDarkLight,
        iconTheme: IconThemeData(color: purpleLight),
      //titleTextStyle: Theme.of(context).textTheme.bodyText1
      ));
  static ThemeData darkTheam(BuildContext context)=>
      ThemeData(
  brightness: Brightness.dark);

  //Colors
static Color pink = const Color(0xFFD4085D);
static Color greenLight = const Color(0xFFB7FBA9);
static Color purpleDarkLight = const Color(0xFF350042);
static Color background = const Color(0xFFFFFFD7);
static Color purpleLight = const Color(0xFFA57BC0);
}