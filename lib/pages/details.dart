import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool isShowMore = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 76, 141, 95),
            title: const Text("Home"),
            actions: [
              Row(
                children: [
                  Stack(
                    children: [
                      Positioned(
                        bottom: 24,
                        child: Container(
                            child: const Text(
                              "8",
                              style: TextStyle(
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
                  const Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Text("\$ 128"),
                  )
                ],
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("assets/img/2.webp"),
                const SizedBox(
                  height: 11,
                ),
                const Text(
                  "\$ 12.99",
                  style: TextStyle(fontSize: 20),
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
                      children: const [
                        Icon(
                          Icons.edit_location,
                          size: 26,
                          color: Color.fromARGB(168, 3, 65, 27),
                          // color: Color.fromARGB(255, 186, 30, 30),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "Flower Shop",
                          style: TextStyle(fontSize: 19),
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
                const Text(
                  "A flower, sometimes known as a bloom or blossom, is the reproductive structure found in flowering plants (plants of the division Angiospermae). The biological function of a flower is to facilitate reproduction, usually by providing a mechanism for the union of sperm with eggs. Flowers may facilitate outcrossing (fusion of sperm and eggs from different individuals in a population) resulting from cross-pollination or allow selfing (fusion of sperm and egg from the same flower) when self-pollination occurs.",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),

              ],
            ),
          )),
    );
  }
}
