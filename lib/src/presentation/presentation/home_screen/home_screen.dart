import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/data/foods_data.dart';
import 'package:shopping/data/menu_data.dart';
import 'package:shopping/models/foods_model.dart';
import 'package:shopping/models/menu_item.dart';
import 'package:shopping/src/presentation/presentation/home_screen/home_controller.dart';
import 'package:shopping/src/presentation/widgets/app_header.dart';
import 'package:shopping/src/presentation/widgets/product_grid.dart';
import 'package:shopping/src/presentation/widgets/select_products_menu.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    final menuItem = homeController.menuListItems;
    return SingleChildScrollView(
      child: Flex(
        direction: Axis.vertical,
        children: <Widget>[
          const AppHeader(),
          Obx(
            () => SelectProductsMenu(
              menuItems: homeController.menuListItems.getMenuListItems,
            ),
          ),
          Obx(() => ProductGrid(homeController.foodItemsList.getFoodsItems)),
        ],
      ),
    );
  }
}
