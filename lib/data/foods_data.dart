import 'package:shopping/models/foods_model.dart';

List<Food> foodList() {
  List<Food> foodItems = [
    Food(
      1,
      'Batata Frita',
      10.55,
      true,
    ),
    Food(
      2,
      'Pão de Alho',
      8.99,
      true,
    ),
    Food(
      1,
      'MilkShake',
      15.55,
      false,
    ),
  ];

  return foodItems;
}
