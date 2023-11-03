import 'package:flutter/material.dart';
import 'package:shopping/utils/app_styles.dart';

class MenuTile extends StatelessWidget {
  MenuTile({
    this.name,
    this.id,
    this.tileFunction,
    super.key,
  });
  String? name;
  int? id;
  Function? tileFunction;
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: GestureDetector(
        onTap: () {},
        child: Card(
          elevation: 3,
          child: Center(
            child: Text(
              name.toString(),
              style: AppStyles.blackBold16,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
