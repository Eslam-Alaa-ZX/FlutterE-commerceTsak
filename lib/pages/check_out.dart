import 'package:flutter/material.dart';
import 'package:flutter_ecommarce_task/provider/cart.dart';
import 'package:flutter_ecommarce_task/shared/constColors.dart';
import 'package:flutter_ecommarce_task/widgets/c_btn.dart';
import 'package:flutter_ecommarce_task/widgets/card_item_check_out.dart';
import 'package:flutter_ecommarce_task/widgets/products_price.dart';
import 'package:provider/provider.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Cart>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appbarGreen,
          title: const Text("Checkout"),
          actions: const [
            ProductsPrice(),
          ],
        ),
        body: Column(
          children: [
            SingleChildScrollView(
              child: SizedBox(
                height: 570,
                child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: data.selectedItems.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CardItemCheckOut(index: index);
                    }),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            MyCBtn(onClick: (){}, color: BTNgreen, txt: "Pay \$${data.totalPrice}")
          ],
        ),
      ),
    );
  }
}
