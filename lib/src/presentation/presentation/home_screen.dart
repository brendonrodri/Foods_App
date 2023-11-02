import 'package:flutter/material.dart';
import 'package:shopping/data/foods_data.dart';
import 'package:shopping/data/menu_data.dart';
import 'package:shopping/models/foods_model.dart';
import 'package:shopping/models/menu_item.dart';
import 'package:shopping/src/presentation/widgets/app_header.dart';
import 'package:shopping/src/presentation/widgets/product_grid.dart';
import 'package:shopping/src/presentation/widgets/select_products_menu.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<Food> foodItems = foodList();
  List<MenuItem> menuItems = menuList();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Flex(
        direction: Axis.vertical,
        children: <Widget>[
          AppHeader(),
          SelectProductsMenu(menuItems),
          ProductGrid(foodItems),
        ],
      ),
    );
  }
}
