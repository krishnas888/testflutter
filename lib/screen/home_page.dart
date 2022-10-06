import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Krishna's App",
          ),
          backgroundColor: Colors.black,
          shadowColor: Colors.black,
        ),
        drawer: Drawer(),
        body: Center(
          child: Container(),
        ),
      ),
    );
  }
}
