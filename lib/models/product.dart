import 'package:flutter/material.dart';


class Product with ChangeNotifier {
    final String id;
    final String title;
    final String imgUrl;
    final double price;
    bool isFav ;

     Product({
    @required this.id,
    @required this.title,
    @required this.price,
    @required this.imgUrl,
    this.isFav = false,
  }); 

  void toggleIsFav(){
    isFav = !isFav;
    notifyListeners();
  }
}