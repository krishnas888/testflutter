import 'package:flutter/material.dart';
import 'package:testflutter/core/store.dart';
import 'package:testflutter/screen/cart_item_page.dart';
import 'package:testflutter/screen/home_page.dart';
import 'package:testflutter/screen/item_detail_page.dart';
import 'package:testflutter/screen/login_page.dart';
import 'package:testflutter/widgets/theams.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp( VxState(store: MyStore(),
  child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode:ThemeMode.system ,
      theme:MyTheme.lightTheme(context),
      darkTheme:MyTheme.darkTheme(context),
      home: const MyHomePage(),
      initialRoute: "/home",
      routes: {
        "/home":(context)=>const MyHomePage(),
        "/login":(context)=>const LoginPage(),
        "/detail":(context)=>ItemDetailPage(),
        "/cart":(context)=>const CartPage(),
      },
    );
  }
}

