import 'package:flutter/material.dart';
import 'package:shopping/utils/app_styles.dart';

class ProductCard extends StatelessWidget {
  ProductCard({
    required this.productName,
    required this.price,
    required this.isVegan,
    super.key,
    int? id,
  });
  String? productName;
  double? price;
  bool? isVegan;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Flex(
        direction: Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Flexible(
            flex: 6,
            child: Container(
              color: Colors.blue,
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  '$productName',
                  style: AppStyles.blackBold16,
                ),
                Text(
                  '$price',
                  style: AppStyles.blackBold16,
                ),
              ],
            ),
          ),
          Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                      size: 25,
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
