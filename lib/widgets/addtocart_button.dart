import 'package:flutter/material.dart';
import 'package:testflutter/core/store.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/cart_model.dart';
import '../models/catalog.dart';


class AddToCart extends StatelessWidget {
  final Item? catalog;
 const AddToCart({
  Key? key, this.catalog
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation,RemoveMutation]);
    final CartModel? _cart = (VxState.store as MyStore).cart;
    //final CatalogModel? _catalog = (VxState.store as MyStore).catalog;
    bool isInCart = _cart?.items.contains(catalog) ?? false;
    return ElevatedButton(
      onPressed: () {

        if (!isInCart) {
         /* isInCart = isInCart.toggle();
          _cart?.catalog = _catalog!;
          _cart?.add(catalog);*/
          AddMutation(catalog);
        }
      },
      child: Center(
        child: isInCart
            ? const Icon(Icons.done,color: Colors.white,).h4(context)
            : "Add to Cart".text.white.make(),
      ),
      style: ButtonStyle(
        // ignore: deprecated_member_use
        backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
      ),
    );
}
}
