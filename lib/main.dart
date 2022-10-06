import 'package:flutter/material.dart';
import 'package:testflutter/screen/home_page.dart';
import 'package:testflutter/screen/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode:ThemeMode.light ,
      theme:ThemeData(primaryColor: Colors.black) ,
      darkTheme: ThemeData(
       brightness: Brightness.dark
      ),
      home: const MyHomePage(),
      initialRoute: "/login",
      routes: {
        "/home":(context)=>const MyHomePage(),
        "/login":(context)=>LoginPage(),
      },
    );
  }
}

