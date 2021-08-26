import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _items = [
    Product(
        id: '1',
        price: 133,
        title: 'Lipstick',
        isFav: false,
        imgUrl:
            'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cHJvZHVjdHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    Product(
      id: '2',
      price: 200,
      title: 'Pepsi Zero',
      isFav: false,
      imgUrl:
          'https://images.unsplash.com/photo-1572635196237-14b3f281503f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZHVjdHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    ),
    Product(
      id: '3',
      price: 200,
      title: 'Royal Glass',
      isFav: false,
      imgUrl:
          'https://images.unsplash.com/photo-1560343090-f0409e92791a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHByb2R1Y3R8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    ),
    Product(
      id: '4',
      price: 200,
      title: 'Royal Glass',
      isFav: false,
      imgUrl:
          'https://images.unsplash.com/photo-1546868871-7041f2a55e12?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHByb2R1Y3R8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    ),
    Product(
      id: '5',
      price: 200,
      title: 'Royal Glass',
      isFav: false,
      imgUrl:
          'https://images.unsplash.com/photo-1629666451094-05672f51e4c7?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    ),
    Product(
      id: '6',
      price: 200,
      title: 'Royal Glass',
      isFav: false,
      imgUrl:
          'https://images.unsplash.com/photo-1629666451094-05672f51e4c7?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    ),
    Product(
      id: '7',
      price: 200,
      title: 'Royal Glass',
      isFav: false,
      imgUrl:
          'https://images.unsplash.com/photo-1629666451094-05672f51e4c7?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    ),
    Product(
      id: '8',
      price: 200,
      title: 'Royal Glass',
      isFav: false,
      imgUrl:
          'https://images.unsplash.com/photo-1629666451094-05672f51e4c7?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    ),
    Product(
      id: '9',
      price: 200,
      title: 'Royal Glass',
      isFav: false,
      imgUrl:
          'https://images.unsplash.com/photo-1629666451094-05672f51e4c7?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    ),
  ];

  Product productById(String id) {
    return _items.firstWhere((element) => element.id == id);
  }

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favsOnly {
    return _items.where((element) => element.isFav).toList();
  }
}
