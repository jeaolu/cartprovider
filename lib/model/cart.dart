import 'package:flutter/material.dart';
import 'item.dart';

class Cart with ChangeNotifier {
  //a list of empty private items
  List<Item> _items = [];
  //initail price 0
  double _price = 0.0;

  //add function created from the list just like DSA(Data Structure and Algorithim)

  void add(Item item) {
    //increase the number of item in the list
    _items.add(item);

    _price += item.price;
    notifyListeners();
  }

  void remove(Item item) {
    _items.remove(item);
    _price -= item.price;
    notifyListeners();
  }

  int get count {
    return _items.length;
  }

  double get totalprice {
    return _price;
  }

  List<Item> get basketitem {
    return _items;
  }
}
