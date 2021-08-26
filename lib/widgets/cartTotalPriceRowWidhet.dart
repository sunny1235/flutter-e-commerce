import 'package:flutter/material.dart';



class CartTotalpriceRowWidget extends StatelessWidget {
 

 final String label;
 final double price;

 CartTotalpriceRowWidget({this.label, this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        Text(
          '\$ $price',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Theme.of(context).primaryColor),
        ),
      ],
    );
  }
}
