import 'package:flutter/material.dart';
import 'product.dart';

class CartProvider with ChangeNotifier {
  final List<Product> _items = [];

  List<Product> get items => _items;

  void addToCart(Product product) {
    _items.add(product);
    notifyListeners();
  }

  void removeOne(Product product) {
    _items.remove(product);
    notifyListeners();
  }

  void removeAll(Product product) {
    _items.removeWhere((e) => e.name == product.name);
    notifyListeners();
  }

  int totalPrice() {
    int total = 0;
    for (var p in _items) {
      total += p.price;
    }
    return total;
  }
}
