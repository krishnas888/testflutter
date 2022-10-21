import 'package:flutter/material.dart';

import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item? item;

  const ItemWidget({Key? key, this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
/*    return Card(
      child: ListTile(
        leading: Image.network("${item!.image}"),
        title: Text("${item!.name}"),
        subtitle: Text("${item!.desc}"),
        trailing: Text("\$ ${item!.price}"
        ),
      ),
    );*/
  return Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    margin: EdgeInsets.fromLTRB(6,6,6,16),
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(16,16,8,16),
          child: Image.network("${item!.image}"),
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
              Text("${item!.name}",style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),),
              SizedBox(height: 4,),
              Text("${item!.desc}",style: const TextStyle(
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
                  Text("\$ ${item!.price}",style: const TextStyle(
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
  );
  }
}
