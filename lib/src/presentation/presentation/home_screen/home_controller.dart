import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/data/foods_data.dart';
import 'package:shopping/data/menu_data.dart';
import 'package:shopping/models/foods_model.dart';
import 'package:shopping/models/menu_item.dart';

class HomeController extends GetxController {
  MenuListItems menuListItems = MenuListItems();
  FoodsItemsList foodList = FoodsItemsList();
}

class MenuListItems {
  RxList<MenuItem> _menuListItems = RxList<MenuItem>();
  List<MenuItem> get getMenuListItems => _menuListItems.value;
  set setMenuListItems(List<MenuItem> value) => _menuListItems.value = value;
}

class GetMenuList {
  GetMenuList(this.menuListItems);
  MenuListItems menuListItems;
  Future<List<MenuItem>?> getMenuItem() async {
    try {
      final response = await menuList();
      return menuListItems.setMenuListItems = response;
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}

class FoodsItemsList {
  RxList<Food> _foodsItems = RxList<Food>();
  List<Food> get foodsItems => _foodsItems.value;
  set foodsItems(List<Food> value) => _foodsItems.value = value;
}

class GetFoodList {
  GetFoodList(this.foodItemsList);
  FoodsItemsList foodItemsList;
  Future<List<Food>?> getFoods() async {
    try {
      final response = await foodList();
      return foodItemsList.foodsItems = response;
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
