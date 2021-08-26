import 'package:flutter/material.dart';

class CartItem {
  String id;
  String title;
  double price;
  int quantity;
  String img;

  CartItem({
    @required this.id,
    @required this.title,
    @required this.price,
    @required this.quantity,
    @required this.img,
  });
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  int get cartCount {
    return _items.length;
  }

  double get totalAmount {
    var total = 0.0;
    _items.forEach((key, value) {
      return total += value.price * value.quantity;
    });
    return total;
  }

  void addItem({String id, String title, double price, String img}) {
 
    if (_items.containsKey(id)) {
      _items.update(
        id,
        (existingCart) => CartItem(
          id: existingCart.id,
          title: existingCart.title,
          price: existingCart.price,
          quantity: existingCart.quantity + 1,
          img: existingCart.img,
        ),
      );
    } else {
      _items.putIfAbsent(
          id,
          () => CartItem(
                id: DateTime.now().toString(),
                title: title,
                price: price,
                quantity: 1,
                img: img,
              ));
    }
    notifyListeners();
  }
}
