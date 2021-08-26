import 'package:flutter/material.dart';


import '../widgets/cartItems.dart';
class CartItemList extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (ctx, i) {
                return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CartItems(),);
              },
            ),
          ),
         
        ],

      ),
    );
  }
}

