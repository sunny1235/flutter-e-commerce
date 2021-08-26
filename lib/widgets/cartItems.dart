import 'package:flutter/material.dart';

class CartItems extends StatelessWidget {
  final String id;
  final double price;
  final String title;
  final String img;
  final int quantity;

  CartItems({this.img, this.id, this.price, this.quantity, this.title});
  @override
  Widget build(BuildContext context) {

    print(img);
    Widget spacing = SizedBox(
      width: 10,
    );
    return Card(
      elevation: 20,
      child: SizedBox(
        height: 120,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                     width: 100,
                     height: double.infinity,
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                        img,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Quantity : $quantity',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            quantityButtons(Icons.add),
                            spacing,
                            quantityButtons(Icons.remove),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '99.99 Rs',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget quantityButtons(IconData icn) {
    return Container(
        height: 25,
        width: 25,
        alignment: Alignment(0, 0),
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.deepPurple),
        ),
        child: Icon(
          icn,
          size: 20,
          color: Colors.white,
        ));
  }
}
