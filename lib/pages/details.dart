import 'package:flutter/material.dart';
import 'package:flutter_ecommarce_task/models/Items.dart';
import 'package:flutter_ecommarce_task/provider/cart.dart';
import 'package:flutter_ecommarce_task/shared/constColors.dart';
import 'package:flutter_ecommarce_task/widgets/products_price.dart';
import 'package:provider/provider.dart';

class Details extends StatefulWidget {
  final Item item;

  const Details({Key? key, required this.item}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool isShowMore = true;

  @override
  Widget build(BuildContext context) {
    final data=Provider.of<Cart>(context);
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: appbarGreen,
            title: const Text("Home"),
            actions: const [
              ProductsPrice(),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(widget.item.path),
                const SizedBox(
                  height: 11,
                ),
                Text(
                  "\$ ${widget.item.price}",
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        padding: const EdgeInsets.all(4),
                        child: const Text(
                          "New",
                          style: TextStyle(fontSize: 15),
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 129, 129),
                          borderRadius: BorderRadius.circular(4),
                        )),
                    const SizedBox(
                      width: 8,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.star,
                          size: 26,
                          color: Color.fromARGB(255, 255, 191, 0),
                        ),
                        Icon(
                          Icons.star,
                          size: 26,
                          color: Color.fromARGB(255, 255, 191, 0),
                        ),
                        Icon(
                          Icons.star,
                          size: 26,
                          color: Color.fromARGB(255, 255, 191, 0),
                        ),
                        Icon(
                          Icons.star,
                          size: 26,
                          color: Color.fromARGB(255, 255, 191, 0),
                        ),
                        Icon(
                          Icons.star,
                          size: 26,
                          color: Color.fromARGB(255, 255, 191, 0),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 66,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.edit_location,
                          size: 26,
                          color: Color.fromARGB(168, 3, 65, 27),
                          // color: Color.fromARGB(255, 186, 30, 30),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          widget.item.location,
                          style: const TextStyle(fontSize: 19),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Details : ",
                    style: TextStyle(fontSize: 22),
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "A flower, sometimes known as a bloom or blossom, is the reproductive structure found in flowering plants (plants of the division Angiospermae). The biological function of a flower is to facilitate reproduction, usually by providing a mechanism for the union of sperm with eggs. Flowers may facilitate outcrossing (fusion of sperm and eggs from different individuals in a population) resulting from cross-pollination or allow selfing (fusion of sperm and egg from the same flower) when self-pollination occurs.",
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                  maxLines: isShowMore ? 3 : null,
                  overflow: TextOverflow.fade,
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        isShowMore = !isShowMore;
                      });
                    },
                    child: Text(
                      isShowMore ? "Show more" : "Show less",
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ))
              ],
            ),
          )),
    );
  }
}
