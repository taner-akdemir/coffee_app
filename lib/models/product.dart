import 'package:coffee/models/ingredient.dart';

import 'category.dart';
import 'package:uuid/uuid.dart';
var uuid = Uuid();

class Product {
  final String name;
  final String image;
  final double price;
  late int starCount;
  final Category category;
  final String id;
  final List<Ingredient>? ingredients;


  Product({
    required this.name,
    required this.image,
    required this.price,
    required this.starCount,
    required this.category,
    required this.id,
    this.ingredients,
  });
}

List<Ingredient> coffeeIngredients = <Ingredient>[
  ?ingredients[1],
  ?ingredients[2],
  ?ingredients[3],
];

List<Ingredient> dessertIngredients = <Ingredient>[
  ?ingredients[9],
];

List<Ingredient> teaIngredients = <Ingredient>[
  ?ingredients[13],
  ?ingredients[14],
];

List<Ingredient> sandwichIngredients = <Ingredient>[
  ?ingredients[4],
  ?ingredients[5],
  ?ingredients[6],
  ?ingredients[10],
  ?ingredients[11],
];

List<Ingredient> waffleIngredients = <Ingredient>[
  ?ingredients[7],
  ?ingredients[8],
  ?ingredients[9],
  ?ingredients[12],
];

List<Product> products = [
  Product(name: "Triliche", image: "cake_2.jpeg", price: 120, starCount: 4, category: Category.cake, id: uuid.v4(), ingredients: dessertIngredients),
  Product(name: "Tiramisu", image: "cake_1.jpeg", price: 130, starCount: 5, category: Category.cake,id: uuid.v4(), ingredients: dessertIngredients),
  Product(name: "Cheese Cake", image: "cheese_cake_1.jpeg", price: 125, starCount: 5, category: Category.cake,id: uuid.v4(), ingredients: dessertIngredients),
  Product(name: "Triliche-2", image: "cake_2.jpeg", price: 125, starCount: 5, category: Category.cake,id: uuid.v4(), ingredients: dessertIngredients),
  Product(name: "Tiramisu-2", image: "cake_1.jpeg", price: 130, starCount: 5, category: Category.cake,id: uuid.v4(),ingredients: dessertIngredients),
  Product(name: "Cheese Cake-2", image: "cheese_cake_1.jpeg", price: 125, starCount: 5, category: Category.cake,id: uuid.v4(),ingredients: dessertIngredients),
  Product(name: "Triliche-3", image: "cake_2.jpeg", price: 125, starCount: 5, category: Category.cake,id: uuid.v4(),ingredients: dessertIngredients),
  Product(name: "Tiramisu-3", image: "cake_1.jpeg", price: 130, starCount: 5, category: Category.cake,id: uuid.v4(),ingredients: dessertIngredients),
  Product(name: "Cheese Cake-3", image: "cheese_cake_1.jpeg", price: 125, starCount: 5, category: Category.cake,id: uuid.v4(),ingredients: dessertIngredients),
  Product(name: "Latte-1", image: "latte_1.jpeg", price: 190, starCount: 5, category: Category.coffee,id: uuid.v4(), ingredients: coffeeIngredients),
  Product(name: "Latte-2", image: "latte_2.jpeg", price: 190, starCount: 5, category: Category.coffee,id: uuid.v4(), ingredients: coffeeIngredients),
  Product(name: "Latte-3", image: "latte_1.jpeg", price: 190, starCount: 5, category: Category.coffee,id: uuid.v4(), ingredients: coffeeIngredients),
  Product(name: "Latte-4", image: "latte_2.jpeg", price: 190, starCount: 5, category: Category.coffee,id: uuid.v4(), ingredients: coffeeIngredients),
  Product(name: "Latte-5", image: "latte_1.jpeg", price: 190, starCount: 5, category: Category.coffee,id: uuid.v4(), ingredients: coffeeIngredients),
  Product(name: "Latte-6", image: "latte_2.jpeg", price: 190, starCount: 5, category: Category.coffee,id: uuid.v4(), ingredients: coffeeIngredients),
  Product(name: "Latte-7", image: "latte_1.jpeg", price: 190, starCount: 5, category: Category.coffee,id: uuid.v4(), ingredients: coffeeIngredients),
  Product(name: "Turkish Coffee-1", image: "tr_coffee_1.jpeg", price: 180, starCount: 5, category: Category.coffee,id: uuid.v4()),
  Product(name: "Frappe-1", image: "frappe_1.jpeg", price: 185, starCount: 5, category: Category.frappe,id: uuid.v4()),
  Product(name: "Frappe-2", image: "frappe_2.jpeg", price: 185, starCount: 5, category: Category.frappe,id: uuid.v4()),
  Product(name: "Sandwich-1", image: "sandvic_1.jpeg", price: 250, starCount: 5, category: Category.sandwich,id: uuid.v4(), ingredients: sandwichIngredients),
  Product(name: "Sandwich-2", image: "sandvic_2.jpeg", price: 250, starCount: 5, category: Category.sandwich,id: uuid.v4(), ingredients: sandwichIngredients),
  Product(name: "Sandwich-3", image: "sandvic_5.jpeg", price: 250, starCount: 5, category: Category.sandwich,id: uuid.v4(), ingredients: sandwichIngredients),
  Product(name: "Sandwich-4", image: "sandvic_3.jpeg", price: 250, starCount: 5, category: Category.sandwich,id: uuid.v4(), ingredients: sandwichIngredients),
  Product(name: "Sandwich-5", image: "sandvic_4.jpeg", price: 250, starCount: 5, category: Category.sandwich,id: uuid.v4(), ingredients: sandwichIngredients),
  Product(name: "Sandwich-6", image: "sandvic_1.jpeg", price: 250, starCount: 5, category: Category.sandwich,id: uuid.v4(), ingredients: sandwichIngredients),
  Product(name: "Sandwich-7", image: "sandvic_5.jpeg", price: 250, starCount: 5, category: Category.sandwich,id: uuid.v4(), ingredients: sandwichIngredients),
  Product(name: "Sandwich-8", image: "sandvic_2.jpeg", price: 250, starCount: 5, category: Category.sandwich,id: uuid.v4(), ingredients: sandwichIngredients),
  Product(name: "Tea-1", image: "tea_1.jpeg", price: 35, starCount: 5, category: Category.tea,id: uuid.v4(), ingredients: teaIngredients),
  Product(name: "Tea-2", image: "tea_2.jpeg", price: 35, starCount: 5, category: Category.tea,id: uuid.v4(), ingredients: teaIngredients),
  Product(name: "Tea-3", image: "tea_1.jpeg", price: 35, starCount: 5, category: Category.tea,id: uuid.v4(), ingredients: teaIngredients),
  Product(name: "Tea-4", image: "tea_2.jpeg", price: 35, starCount: 5, category: Category.tea,id: uuid.v4(), ingredients: teaIngredients),
  Product(name: "Tea-5", image: "tea_1.jpeg", price: 35, starCount: 5, category: Category.tea,id: uuid.v4(), ingredients: teaIngredients),
  Product(name: "Waffle-1", image: "waffle_1.jpeg", price: 275, starCount: 5, category: Category.waffle,id: uuid.v4(), ingredients: waffleIngredients),
  Product(name: "Waffle-2", image: "waffle_2.jpeg", price: 275, starCount: 5, category: Category.waffle,id: uuid.v4(), ingredients: waffleIngredients),
  Product(name: "Waffle-3", image: "waffle_3.jpeg", price: 275, starCount: 5, category: Category.waffle,id: uuid.v4(), ingredients: waffleIngredients),
  Product(name: "Waffle-4", image: "waffle_4.jpeg", price: 275, starCount: 5, category: Category.waffle,id: uuid.v4(), ingredients: waffleIngredients),
  Product(name: "Waffle-5", image: "waffle_2.jpeg", price: 275, starCount: 5, category: Category.waffle,id: uuid.v4(), ingredients: waffleIngredients),
  Product(name: "Waffle-6", image: "waffle_4.jpeg", price: 275, starCount: 5, category: Category.waffle,id: uuid.v4(), ingredients: waffleIngredients),
  Product(name: "Waffle-7", image: "waffle_1.jpeg", price: 275, starCount: 5, category: Category.waffle,id: uuid.v4(), ingredients: waffleIngredients),
  Product(name: "Waffle-8", image: "waffle_3.jpeg", price: 275, starCount: 5, category: Category.waffle,id: uuid.v4(), ingredients: waffleIngredients),
  Product(name: "Waffle-9", image: "waffle_1.jpeg", price: 275, starCount: 5, category: Category.waffle,id: uuid.v4(), ingredients: waffleIngredients),
  Product(name: "Waffle-10", image: "waffle_4.jpeg", price: 275, starCount: 5, category: Category.waffle,id: uuid.v4(), ingredients: waffleIngredients),
];
