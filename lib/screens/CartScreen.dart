import 'package:flutter/material.dart';
import 'package:okay/providers/cartProvider.dart';
// import 'package:okay/widgets/cartItemList.dart';
import '../widgets/cartItems.dart';
import 'package:provider/provider.dart';
import '../widgets/cartTotalPriceRowWidhet.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cartScreen';

  @override
  Widget build(BuildContext context) {
    var cartData = Provider.of<Cart>(context);
    var eachCartProdcut = cartData.items;
    return Scaffold(
      appBar: AppBar(
        title: Text('ORDERS'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // CartItemList(),
            // Cart item list
            Container(
              height: 500,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: cartData.items.length,
                      itemBuilder: (ctx, i) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CartItems(
                            id: eachCartProdcut.values.toList()[i].id,
                            title: eachCartProdcut.values.toList()[i].title,
                            quantity: eachCartProdcut.values.toList()[i].quantity,
                            img: eachCartProdcut.values.toList()[i].img,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  CartTotalpriceRowWidget(
                    label: 'SubTotal',
                    price: 99.99,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CartTotalpriceRowWidget(
                    label: 'Tax',
                    price: 5,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CartTotalpriceRowWidget(
                    label: 'Total',
                    price: cartData.totalAmount,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 10,
                          shadowColor: Theme.of(context).primaryColor,
                          primary: Theme.of(context).primaryColor),
                      child: Text(
                        'Buy Now',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
