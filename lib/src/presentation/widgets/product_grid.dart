import 'package:flutter/material.dart';
import 'package:shopping/src/presentation/widgets/product_card.dart';

class ProductGrid extends StatelessWidget {
  ProductGrid(this.productItems, {super.key});
  List productItems;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 1),
      ),
      itemCount: productItems.length,
      itemBuilder: (context, index) {
        final iterectedItems = productItems[index];
        return ProductCard(
          id: iterectedItems.id,
          productName: iterectedItems.name,
          price: iterectedItems.price,
          isVegan: iterectedItems.isVegan,
        );
      },
    );
  }
}
