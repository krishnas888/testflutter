import 'package:flutter/material.dart';
import 'package:testflutter/models/catalog.dart';

import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
          child: ListView.builder(
              itemCount: CatalogModel.items.length,
            itemBuilder: (context,index){
                return ItemWidget(item: CatalogModel.items[index],);
            },
          ),
        ),
      ),
    );
  }
}
