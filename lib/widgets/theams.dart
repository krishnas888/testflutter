import 'package:flutter/material.dart';

class MyTheme{
  static ThemeData lightTheam(BuildContext context)=>
      ThemeData(
          primaryColor: Colors.black,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
      //titleTextStyle: Theme.of(context).textTheme.bodyText1
      ));
  static ThemeData darkTheam(BuildContext context)=>
      ThemeData(
  brightness: Brightness.dark);
}