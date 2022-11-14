import 'package:flutter/material.dart';
import 'package:flutter_ecommarce_task/provider/cart.dart';
import 'package:provider/provider.dart';

class CardItemCheckOut extends StatelessWidget {
  const CardItemCheckOut({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Cart>(context);
    return  Card(
      child: ListTile(
        subtitle: Text("\$ ${data.selectedItems[index].price} - ${data.selectedItems[index].location}"),
        leading: CircleAvatar(backgroundImage:AssetImage(data.selectedItems[index].path),),
        title: Text(data.selectedItems[index].name),
        trailing: IconButton(
            onPressed: () {
              data.removeItem(index);
            },
            icon: const Icon(Icons.remove)),
      ),);
  }
}
