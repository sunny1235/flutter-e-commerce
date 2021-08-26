import 'package:flutter/material.dart';
import 'package:okay/providers/productsProvider.dart';
import 'package:provider/provider.dart';

class ProdcutOverview extends StatelessWidget {
  static const routeName = 'productOverview';
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments;
   
   final myProd = Provider.of<ProductProvider>(context).productById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text('${myProd.title}'),
      ),
      body: Center(
        child: Text('sunny'),
      ),
    );
  }
}
