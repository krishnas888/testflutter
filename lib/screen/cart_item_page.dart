import 'package:flutter/material.dart';
import 'package:testflutter/widgets/theams.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyTheme.background,
        appBar: AppBar(
          backgroundColor: MyTheme.purpleDarkLight,
          title: "Cart".text.make().pOnly(left: 100),
        ),
        body: Container(
          color: Colors.pink,
        ),
      ),
    );
  }
}
