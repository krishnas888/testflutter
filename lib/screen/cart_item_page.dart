import 'package:flutter/material.dart';
import 'package:testflutter/models/cart_model.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/store.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.canvasColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: "Cart".text.make().pOnly(left: 100),

            leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon:const Icon(Icons.arrow_back_ios),
              //replace with our own icon data.
            )
        ),
        body: Column(
          children: [
            const _CartList().p32().expand(),
            const Divider(),
            const _CartTotal()
          ],
        ),
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
 
  const _CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CartModel? _cart = (VxState.store as MyStore).cart;
    return Container(
      padding: const EdgeInsets.all(16),
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         // "\$${_cart?.totalPrice}".text.xl4.color(context.accentColor).make(),
         VxConsumer(
           notifications: const {},
             // ignore: avoid_types_as_parameter_names
             builder: (context,_,num){
           return "\$${_cart!.totalPrice}".text.xl4.color(context.accentColor).make();
         }, mutations: const {RemoveMutation}),
          30.widthBox,
          TextButton(
            onPressed: () {},
            child: "Buy".text.white.make(),
            style: ButtonStyle(
              backgroundColor:
              // ignore: deprecated_member_use
              MaterialStateProperty.all(context.theme.buttonColor),
            ),
          ).w32(context)
        ],
      ),
    );
  }
}

class _CartList extends StatelessWidget {
   const _CartList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel? _cart = (VxState.store as MyStore).cart;
    return _cart!.items.isEmpty?"Nothing to show".text.xl3.makeCentered():ListView.builder(
      itemCount: _cart.items.length,
        itemBuilder: (context,index)=>ListTile(
          leading: Icon(Icons.done,color: context.accentColor,),
          trailing: IconButton(
            icon: const Icon(Icons.remove_circle_outline,color: Colors.redAccent,),
            onPressed: (){
              //_cart?.remove(_cart?.items[index]);
              /*setState(() {
              });*/
              RemoveMutation(_cart.items[index]);
            },
          ),
          title: _cart.items[index].name?.text.make(),
        ));
  }
}

