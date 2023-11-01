import 'package:flutter/material.dart';
import 'package:shopping/data/foods_data.dart';
import 'package:shopping/models/foods_model.dart';
import 'package:shopping/src/presentation/widgets/product_grid.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<Food> foodItems = foodList();
  @override
  Widget build(BuildContext context) {
    return ProductGrid(foodItems);
  }
}
