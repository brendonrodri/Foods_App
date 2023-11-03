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
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10),
      width: 110,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(205, 255, 255, 255),
        ),
        onPressed: () {},
        child: Center(
          child: Text(
            name.toString(),
            style: AppStyles.blackBold16,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
