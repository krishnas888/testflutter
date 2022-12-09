import 'package:testflutter/models/cart_model.dart';
import 'package:testflutter/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore{
  //manipulating cart and catalog
  CatalogModel? catalog;
  CartModel? cart;

  //creating constructor
MyStore(){
  catalog = CatalogModel();
  cart = CartModel();
  cart?.catalog = catalog!;
}
}