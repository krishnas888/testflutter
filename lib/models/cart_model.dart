import 'package:testflutter/core/store.dart';
import 'package:velocity_x/velocity_x.dart';

import 'catalog.dart';

class CartModel {

  //single turn  class
/*  static final cartModel=CartModel._internal();
  CartModel._internal();
  factory CartModel()=> cartModel;*/


  //catalog field
  late CatalogModel _catalog;

  //collection of ID - start Ids of each Item
  final List<int> _itemIds = [];

  //Get Catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    // ignore: unnecessary_null_comparison
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //Get Item in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //Get total prise
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price!);

  //Add Item
/*  void add(Item? item) {
    _itemIds.add(item!.id!);
  }*/

//remove
/*  void remove(Item? item) {
    _itemIds.remove(item!.id!);
  }*/
}

class AddMutation extends VxMutation<MyStore>{
  final Item? item;

  AddMutation(this.item);
  @override
  perform() {
    // TODO: implement perform
    store?.cart?._itemIds.add(item!.id!);
    throw UnimplementedError();
  }
}
class RemoveMutation extends VxMutation<MyStore>{
  final Item? item;

  RemoveMutation(this.item);
  @override
  perform() {
    // TODO: implement perform
    store?.cart?._itemIds.remove(item!.id!);
    throw UnimplementedError();
  }
}