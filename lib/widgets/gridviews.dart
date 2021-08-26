import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/productsProvider.dart';
import '../widgets/productItem.dart';

class GridViews extends StatelessWidget {
   
   final bool showFav;

   GridViews(this.showFav);
   
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<ProductProvider>(context, listen: false);
    final loadedData = showFav? productData.favsOnly : productData.items;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        itemCount: loadedData.length,
        itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
         value: loadedData[i],
          child: ProductItem(),
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1 / 1.5,
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10),
      ),
    );
  }
}
