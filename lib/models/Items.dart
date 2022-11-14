class Item {
  String path;
  double price;
  String location;

  Item({required this.path, required this.price,this.location="Main branch"});
}

final List<Item> items=[Item(path: "assets/img/1.webp", price: 10),
  Item(path: "assets/img/2.webp", price: 12, location: "Eslam Shop"),
  Item(path: "assets/img/3.webp", price: 14),
  Item(path: "assets/img/4.webp", price: 16),
  Item(path: "assets/img/5.webp", price: 18, location: "Eslam Shop"),
  Item(path: "assets/img/6.webp", price: 20, location: "Eslam Shop"),
  Item(path: "assets/img/7.webp", price: 22),
  Item(path: "assets/img/8.webp", price: 24, location: "Eslam Shop"),
];
