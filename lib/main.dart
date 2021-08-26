import 'package:flutter/material.dart';
import 'package:okay/providers/cartProvider.dart';
import 'package:okay/screens/CartScreen.dart';
import 'package:okay/screens/loginScreen.dart';
import 'package:okay/screens/productOverview.dart';
import 'package:okay/screens/testScreen.dart';
import 'package:provider/provider.dart';

import './screens/HomePageScreen.dart';
import './providers/productsProvider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Cart(),
        )
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Colors.deepPurple,
            fontFamily: 'Oxygen',
          ),
          home: HomePage(),
          routes: {
            HomePage.routeName: (context) => HomePage(),
            ProdcutOverview.routeName: (context) => ProdcutOverview(),
            CartScreen.routeName: (context) => CartScreen(),
          }),
    );
  }
}
