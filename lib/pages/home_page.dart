import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          drawer: Drawer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/img/test.jpg"),
                            fit: BoxFit.cover),
                      ),
                      accountName: Text("Eslam Alaa",
                          style: TextStyle(
                            color: Colors.black,
                          )),
                      accountEmail: Text("zoro12zx@gmail.com",
                          style: TextStyle(
                            color: Colors.black,
                          )),
                      currentAccountPictureSize: Size.square(99),
                      currentAccountPicture: CircleAvatar(
                          radius: 55,
                          backgroundImage: AssetImage("assets/img/person.jpg")),
                    ),
                    ListTile(
                        title: const Text("Home"),
                        leading: const Icon(Icons.home),
                        onTap: () {}),
                    ListTile(
                        title: const Text("My products"),
                        leading: const Icon(Icons.add_shopping_cart),
                        onTap: () {}),
                    ListTile(
                        title: const Text("About"),
                        leading: const Icon(Icons.help_center),
                        onTap: () {}),
                    ListTile(
                        title: const Text("Logout"),
                        leading: const Icon(Icons.exit_to_app),
                        onTap: () {}),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: const Text("Developed by Eslam Alaa © 2022",
                      style: TextStyle(fontSize: 16)),
                )
              ],
            ),
          ),
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
                              style:
                              TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
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
          body: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 33),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.lightBlue,
                );
              }),
      ),
    );
  }
}
