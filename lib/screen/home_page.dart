import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testflutter/models/catalog.dart';
import 'package:testflutter/widgets/theams.dart';
import 'package:velocity_x/velocity_x.dart';
import '../widgets/item_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    final catalogJson = await rootBundle.loadString("assets/file/catalog.json");
    final decodeDate = jsonDecode(catalogJson);
    var productsData = decodeDate["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      /* child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Center(
            child: const Text(
              "Catalog",
            ),
          ),
          backgroundColor: Colors.black,
          shadowColor: Colors.black,
        ),
        drawer: MyDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: (CatalogModel.items == null && CatalogModel.items.isEmpty)
              ? const Center(
            child: CircularProgressIndicator(),
          ):
                ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: CatalogModel.items[index],
              );
            },
          )
              */ /*GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                  ),
                  itemCount: CatalogModel.items.length,
                  itemBuilder: (context, index) {
                    debugPrint("${CatalogModel.items.length}");
                    final item = CatalogModel.items;
                    return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: GridTile(
                        header: Center(child: Text("${item[index].name}")),
                        child: Image.network("${item[index].image}"),
                        footer: Center(child: Text("\$ ${item[index].price}")),
                      ),
                    );
                  })*/ /*

        ),
      ),*/
      child: SafeArea(
        child: Scaffold(
          backgroundColor: MyTheme.background,
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              Navigator.pushNamed(context, "/cart");
            },
            backgroundColor: MyTheme.greenLight,
            child: Icon(CupertinoIcons.cart,color: MyTheme.pink,),
          ),
          body: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CatalogHeader(),
                10.heightBox,
                if (CatalogModel.items ==null )
                  const CircularProgressIndicator().centered().expand()
                else
                  const CatalogList().expand()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.bold.color(MyTheme.purpleDarkLight).make(),
        "Trending product".text.xl2.semiBold.color(MyTheme.purpleLight).make(),
      ],
    );
  }
}


