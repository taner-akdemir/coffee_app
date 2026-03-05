import 'package:coffee/models/product.dart';

class Ingredient {
  final String name;
  final double qty;
  final Unit unit;
  final double price;

  const Ingredient({
    required this.name,
    required this.qty,
    required this.price,
    required this.unit,
  });
}

Map<int,Ingredient> ingredients = <int,Ingredient>{
  1: Ingredient(name: "Milk", qty: 1, unit: Unit.shot, price: 10),
  2: Ingredient(name: "Soy Milk", qty: 1, unit: Unit.shot, price: 12),
  3: Ingredient(name: "Coffee", qty: 1, unit: Unit.shot, price: 5),
  4: Ingredient(name: "Tomato", qty: 1, unit: Unit.piece, price: 0.1),
  5: Ingredient(name: "Egg", qty: 1, unit: Unit.piece, price: 2),
  6: Ingredient(name: "Cucumber", qty: 1, unit: Unit.piece, price: 1),
  7: Ingredient(name: "Strawberry", qty: 1, unit: Unit.piece, price: 1),
  8: Ingredient(name: "Banana", qty: 1, unit: Unit.piece, price: 2),
  9: Ingredient(name: "Chocolate", qty: 1, unit: Unit.shot, price: 1),
  10: Ingredient(name: "Cheese", qty: 1, unit: Unit.slice, price: 1),
  11: Ingredient(name: "Cheddar Cheese", qty: 1, unit: Unit.slice, price: 1.5),
  12: Ingredient(name: "Honey", qty: 1, unit: Unit.shot, price: 1),
  13: Ingredient(name: "Mint", qty: 1, unit: Unit.pinch, price: 1),
  14: Ingredient(name: "Lemon", qty: 1, unit: Unit.slice, price: 1),
};

enum Unit {
  piece(),
  slice(),
  pinch(),
  kg(),
  mg(),
  lt(),
  ml(),
  shot(),
  cup(),
  waterGlass(),
  teaGlass(),
}
