import 'package:flutter/material.dart';
import 'package:flutter_ecommarce_task/models/Items.dart';

class Cart with ChangeNotifier{
  List<Item> selectedItems=[];
  int totalPrice=0;


  void addItem(Item item){
    selectedItems.add(item);
    totalPrice+= item.price.round();
    notifyListeners();
  }

  void removeItem(int index){
    totalPrice-=selectedItems[index].price.round();
    selectedItems.removeAt(index);
    notifyListeners();
  }
}