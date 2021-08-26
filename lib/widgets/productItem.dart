// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:okay/models/product.dart';
import 'package:okay/screens/productOverview.dart';
import '../providers/cartProvider.dart';

import 'package:provider/provider.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, ProdcutOverview.routeName,
              arguments: product.id);
        },
        child: GridTile(
          child: Image.asset(
            'assets/images/product.jpg',
            fit: BoxFit.cover,
          ),
          //  Image.network(
          //   product.imgUrl,
          //   fit: BoxFit.cover,
          // ),
          footer: GridTileBar(
            backgroundColor: Colors.black87,
            title: Text(
              product.title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            leading: Consumer<Product>(
              builder: (ctx, pro, child) => IconButton(
                icon: Icon(
                  pro.isFav ? Icons.favorite : Icons.favorite_border,
                  color: Colors.white,
                ),
                onPressed: () {
                  pro.toggleIsFav();
                },
              ),
            ),
            trailing: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                cart.addItem(
                  id: product.id,
                  title: product.title,
                  price: product.price,
                  img: product.imgUrl,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
