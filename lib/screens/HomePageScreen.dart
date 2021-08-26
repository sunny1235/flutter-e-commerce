import 'package:flutter/material.dart';
import 'package:okay/providers/cartProvider.dart';
import 'package:okay/widgets/badge.dart';

import '../widgets/gridviews.dart';
// import 'package:badges/badges.dart';

import 'package:provider/provider.dart';

enum filterOptions { Favorties, All }

class HomePage extends StatefulWidget {
 
    static const routeName = 'homePage';


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   
  var _showFav = false;
  var _showBadge = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Empty Basket ?',
          style: TextStyle(fontSize: 22),
        ),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (filterOptions value) {
              setState(() {
                if (value == filterOptions.Favorties) {
                  _showFav = true;
                } else {
                  _showFav = false;
                }
              });
            },
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text(
                  'Favorites',
                ),
                value: filterOptions.Favorties,
              ),
              PopupMenuItem(
                child: Text(
                  'All',
                ),
                value: filterOptions.All,
              ),
            ],
          ),
          Consumer<Cart>(
            builder: (_, cart, ch) {
            if (cart.cartCount > 0) {
              _showBadge = true;
            }
            else{
              _showBadge = false;
            }
            return Padding(
              padding: const EdgeInsets.only(right: 10),
              child: CartBadge(showBadge: _showBadge, cart: cart,),
            );
          }),
        ],
      ),
      body: GridViews(_showFav),
    );
  }
}

