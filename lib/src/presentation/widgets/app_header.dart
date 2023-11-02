import 'package:flutter/material.dart';
import 'package:shopping/utils/app_styles.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight * 0.10,
      child: const Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Mercadinho di Cria",
              style: AppStyles.blackBold22,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.shopping_bag,
                  color: Colors.black,
                  size: 35,
                ),
                //TODO: add item count
                Text(
                  '0',
                  style: AppStyles.blackBold18,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
