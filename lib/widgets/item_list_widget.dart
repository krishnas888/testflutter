import 'package:flutter/material.dart';
import 'package:testflutter/screen/item_detail_page.dart';
import 'package:velocity_x/velocity_x.dart';
import '../models/catalog.dart';
import 'addtocart_button.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items?.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items![index];
        return InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      ItemDetailPage(catalog: catalog))),
          child: ItemWidget(
            catalog: catalog,
          ),
        );
      },
    );
  }
}

class ItemWidget extends StatelessWidget {
  final Item? catalog;

  const ItemWidget({Key? key, this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(tag:Key(catalog!.id.toString()),child: CatalogImage(image: "${catalog?.image}")),
          Expanded(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  "${catalog?.name}"
                      .text
                      .lg
                      .color(context.accentColor)
                      .bold
                      .make(),
                  "${catalog?.desc}"
                      .text
                      .textStyle(context.captionStyle)
                      .make(),
                  10.heightBox,
                  ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    buttonPadding: EdgeInsets.zero,
                    children: [
                      "\$ ${catalog?.price}".text.bold.xl.make(),
                      AddToCart( catalog: catalog,)
                    ],
                  ).pOnly(right: 8)
                ],
              ),
            ),
          ),
        ],
      ),
    ).color(context.cardColor).rounded.square(150).make().py16();
/*    return Card(
      child: ListTile(
        leading: Image.network("${item!.image}"),
        title: Text("${item!.name}"),
        subtitle: Text("${item!.desc}"),
        trailing: Text("\$ ${item!.price}"
        ),
      ),
    );*/
    /* return Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    margin: EdgeInsets.fromLTRB(6,6,6,16),
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(16,16,8,16),
          child: Image.network("${catalog!.image}"),
          height: 120,
          width: 130,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius:BorderRadius.circular(15),
          ),
        ),
        Expanded(child: Center(
          child: Column(
            children: [
              Text("${catalog!.name}",style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),),
              SizedBox(height: 4,),
              Text("${catalog!.desc}",style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.black45
              ),),
              SizedBox(
                height: 10,
              ),
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$ ${catalog!.price}",style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),),
                  TextButton(
                    onPressed: (){},
                    child: Text("Buy",style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                       Colors.black
                      ),
                    ),
        )
                ],
              )
            ],
          ),
        )),SizedBox(
          width: 8,
        )
      ],
    ),
  );*/
  }
}

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({Key? key, required this.image})
      // ignore: unnecessary_null_comparison
      : assert(image != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .rounded
        .p8
        .color(context.canvasColor)
        .make()
        .p12()
        .w40(context);
  }
}
