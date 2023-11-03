import 'package:flutter/material.dart';
import 'package:shopping/models/menu_item.dart';
import 'package:shopping/src/presentation/widgets/menu_tile.dart';

class SelectProductsMenu extends StatelessWidget {
  SelectProductsMenu({this.menuItems, super.key});
  List<MenuItem>? menuItems;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      padding: const EdgeInsets.only(left: 5, bottom: 5),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: menuItems!.length,
        itemBuilder: (context, index) {
          final menuListItemsIterected = menuItems![index];
          return MenuTile(
            name: menuListItemsIterected.name,
          );
        },
      ),
    );
  }
}
