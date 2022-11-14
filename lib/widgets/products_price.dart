import 'package:flutter/material.dart';
import 'package:flutter_ecommarce_task/provider/cart.dart';
import 'package:provider/provider.dart';

class ProductsPrice extends StatelessWidget {
  const ProductsPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data=Provider.of<Cart>(context);
    return Row(children: [
      Stack(
        children: [
          Positioned(
            bottom: 24,
            child: Container(
                child: Text(
                  "${data.selectedItems.length}",
                  style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(211, 164, 255, 193),
                    shape: BoxShape.circle)),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_shopping_cart),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Text("\$ ${data.totalPrice}"),
      ),
    ]);
  }
}
