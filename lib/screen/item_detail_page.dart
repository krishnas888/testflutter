// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../models/catalog.dart';
import '../widgets/addtocart_button.dart';

class ItemDetailPage extends StatefulWidget {
  final Item? catalog;

  const ItemDetailPage({Key? key, this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  State<ItemDetailPage> createState() => _ItemDetailPageState();
}

class _ItemDetailPageState extends State<ItemDetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
            leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon:const Icon(Icons.arrow_back_ios),
              //replace with our own icon data.
            )
        ),
        backgroundColor: context.canvasColor,
        body: Column(
          children: [
            Hero(
              tag: Key(
                widget.catalog!.id.toString(),
              ),
              child: Image.network(widget.catalog!.image!),
            ).h32(context).p16(),
            Expanded(
              child: VxArc(
                height: 10.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      "${widget.catalog?.name}"
                          .text
                          .xl4
                          .color(context.accentColor)
                          .bold
                          .make(),
                      "${widget.catalog?.desc}"
                          .text
                          .textStyle(context.captionStyle)
                          .xl
                          .make(),
                      "The product is refurbished, fully functional, and in good condition. Backed by the 90-day Amazon Renewed Guarantee."
                          .text
                          .textStyle(context.captionStyle)
                          .make()
                          .pOnly(right: 16, left: 16, top: 8, bottom: 8),
                      "- This pre-owned product has been professionally inspected, tested and cleaned by Amazon qualified vendors."
                          .text
                          .textStyle(context.captionStyle)
                          .make()
                          .pOnly(right: 16, left: 16, top: 4, bottom: 8),
                      Row(
                        children: [
                          "Note:"
                              .text
                              .textStyle(context.captionStyle)
                              .base
                              .semiBold
                              .color(Colors.black)
                              .make()
                              .pOnly(left: 16),
                        ],
                      ),
                      "            Products with electrical plugs are designed for use in the US. Outlets and voltage differ internationally and this product may require an adapter or converter for use in your destination. Please check compatibility before purchasing."
                          .text
                          .textStyle(context.captionStyle)
                          .make()
                          .pOnly(right: 16, left: 16),
                    ],
                  ).pOnly(top: 48,bottom: 30),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          color: context.cardColor,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: Vx.mH8,
            children: [
              "\$ ${widget.catalog?.price}"
                  .text
                  .bold
                  .xl4
                  .color(context.theme.secondaryHeaderColor)
                  .make(),
              AddToCart(catalog: widget.catalog,).wh(120, 50)
            ],
          ).p16(),
        ),
      ),
    );
  }
}


