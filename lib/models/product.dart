import 'category.dart';
import 'package:uuid/uuid.dart';
var uuid = Uuid();

class Product {
  final String name;
  final String image;
  final double price;
  final int starCount;
  final Category category;
  final String id;


  Product({
    required this.name,
    required this.image,
    required this.price,
    required this.starCount,
    required this.category,
    required this.id,
  });
}

List<Product> products = [
  Product(name: "Triliche", image: "cake_2.jpeg", price: 120, starCount: 5, category: Category.cake, id: uuid.v4()),
  Product(name: "Tiramisu", image: "cake_1.jpeg", price: 130, starCount: 5, category: Category.cake,id: uuid.v4()),
  Product(name: "Cheese Cake", image: "cheese_cake_1.jpeg", price: 125, starCount: 5, category: Category.cake,id: uuid.v4()),
  Product(name: "Latte", image: "latte_1.jpeg", price: 190, starCount: 5, category: Category.coffee,id: uuid.v4()),
  Product(name: "Turkish Coffee", image: "tr_coffee_1.jpeg", price: 180, starCount: 5, category: Category.coffee,id: uuid.v4()),
  Product(name: "Frappe", image: "frappe_1.jpeg", price: 185, starCount: 5, category: Category.frappe,id: uuid.v4()),
  Product(name: "Sandwich-1", image: "sandvic_1.jpeg", price: 250, starCount: 5, category: Category.sandwich,id: uuid.v4()),
  Product(name: "Sandwich-2", image: "sandvic_2.jpeg", price: 250, starCount: 5, category: Category.sandwich,id: uuid.v4()),
  Product(name: "Sandwich-3", image: "sandvic_5.jpeg", price: 250, starCount: 5, category: Category.sandwich,id: uuid.v4()),
  Product(name: "Sandwich-4", image: "sandvic_3.jpeg", price: 250, starCount: 5, category: Category.sandwich,id: uuid.v4()),
  Product(name: "Sandwich-5", image: "sandvic_4.jpeg", price: 250, starCount: 5, category: Category.sandwich,id: uuid.v4()),
  Product(name: "Sandwich-6", image: "sandvic_1.jpeg", price: 250, starCount: 5, category: Category.sandwich,id: uuid.v4()),
  Product(name: "Sandwich-7", image: "sandvic_5.jpeg", price: 250, starCount: 5, category: Category.sandwich,id: uuid.v4()),
  Product(name: "Sandwich-8", image: "sandvic_2.jpeg", price: 250, starCount: 5, category: Category.sandwich,id: uuid.v4()),
  Product(name: "Tea-1", image: "tea_1.jpeg", price: 35, starCount: 5, category: Category.tea,id: uuid.v4()),
  Product(name: "Tea-2", image: "tea_2.jpeg", price: 35, starCount: 5, category: Category.tea,id: uuid.v4()),
  Product(name: "Waffle-1", image: "waffle_1.jpeg", price: 275, starCount: 5, category: Category.waffle,id: uuid.v4()),
  Product(name: "Waffle-2", image: "waffle_2.jpeg", price: 275, starCount: 5, category: Category.waffle,id: uuid.v4()),
  Product(name: "Waffle-3", image: "waffle_3.jpeg", price: 275, starCount: 5, category: Category.waffle,id: uuid.v4()),
  Product(name: "Waffle-4", image: "waffle_4.jpeg", price: 275, starCount: 5, category: Category.waffle,id: uuid.v4()),
];
