class Item {
  String path;
  double price;
  String location;
  String name;

  Item({required this.path, required this.name, required this.price,this.location="Main branch"});
}

final List<Item> items=[Item(name:"Product 1", path: "assets/img/1.webp", price: 10),
  Item(name:"Product 2", path: "assets/img/2.webp", price: 12, location: "Eslam Shop"),
  Item(name:"Product 3", path: "assets/img/3.webp", price: 14),
  Item(name:"Product 4", path: "assets/img/4.webp", price: 16),
  Item(name:"Product 5", path: "assets/img/5.webp", price: 18, location: "Eslam Shop"),
  Item(name:"Product 6", path: "assets/img/6.webp", price: 20, location: "Eslam Shop"),
  Item(name:"Product 7", path: "assets/img/7.webp", price: 22),
  Item(name:"Product 8", path: "assets/img/8.webp", price: 24, location: "Eslam Shop"),
];
