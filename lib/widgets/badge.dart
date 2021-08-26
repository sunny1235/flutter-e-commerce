import 'package:flutter/material.dart';

import 'package:badges/badges.dart';
import 'package:okay/screens/CartScreen.dart';
import '../providers/cartProvider.dart';

class CartBadge extends StatelessWidget {
  @required
  final bool showBadge;
  @required
  final Cart cart;

  CartBadge({this.showBadge, this.cart});

  @override
  Widget build(BuildContext context) {
    return Badge(
      showBadge: showBadge,
      animationType: BadgeAnimationType.scale,
      animationDuration: Duration(microseconds: 10),
      badgeContent: Text(
        cart.cartCount.toString(),
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      position: BadgePosition.topEnd(top: 0, end: 0),
      badgeColor: Colors.white,
      child: IconButton(
        icon: Icon(Icons.shopping_cart),
        onPressed: () {
          Navigator.pushNamed(context, CartScreen.routeName);
        },
      ),
    );
  }
}
