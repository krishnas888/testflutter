class Item{
  final int? id;
  final String? name;
  final String? desc;
  final num? price;
  final String? color;
  final String? image;

  Item({
    this.id,
    this.name,
    this.desc,
    this.price,
    this.color,
    this.image,
});

}
class CatalogModel{

  static final items=[
    Item(
        id:1,
        name:"iphone 14 pro",
        desc: "Apple iphone 14th generation",
        price: 999,
        color: "#33505a",
        image: "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MPU73?wid=572&hei=572&fmt=jpeg&qlt=95&.v=1660950870938"
    )
  ];

}