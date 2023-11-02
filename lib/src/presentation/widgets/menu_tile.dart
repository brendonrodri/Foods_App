import 'package:flutter/material.dart';
import 'package:shopping/utils/app_styles.dart';

class MenuTile extends StatelessWidget {
  MenuTile(
    this.itemTitle, {
    super.key,
  });
  String itemTitle;
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Card(
        elevation: 3,
        child: Center(
          child: Text(
            itemTitle,
            style: AppStyles.blackBold16,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
