import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/data/foods_data.dart';
import 'package:shopping/data/menu_data.dart';
import 'package:shopping/models/foods_model.dart';
import 'package:shopping/models/menu_item.dart';

class HomeController extends GetxController {
  MenuListItems menuListItems = MenuListItems();
  FoodsItemsList foodItemsList = FoodsItemsList();
  Future<List<MenuItem>?> getMenuItem() async {
    try {
      final response = await menuList();
      return menuListItems.setMenuListItems = response;
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<List<Food>?> getFoods() async {
    try {
      final response = await foodList();
      final items = foodItemsList.setFoodsItems = response;
      return items;
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  void onInit() {
    getMenuItem();
    getFoods();
    super.onInit();
  }
}

class MenuListItems {
  RxList<MenuItem> _menuListItems = RxList<MenuItem>();
  List<MenuItem> get getMenuListItems => _menuListItems.value;
  set setMenuListItems(List<MenuItem> value) => _menuListItems.value = value;
}

class GetMenuList {
  GetMenuList(this.menuListItems);
  MenuListItems menuListItems;
  //TODO: implement methods for get list here.
}

class FoodsItemsList {
  RxList<Food> _foodsItems = RxList<Food>();
  List<Food> get getFoodsItems => _foodsItems.value;
  set setFoodsItems(List<Food> value) => _foodsItems.value = value;
}

class GetFoodList {
  GetFoodList(this.foodItemsList);
  FoodsItemsList foodItemsList;
  //TODO: implement methods for get list here.
}
