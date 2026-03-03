class Product {
  final String name;
  final String image;
  final double price;
  final int starCount;
  final ProductType type;

  Product({
    required this.name,
    required this.image,
    required this.price,
    required this.starCount,
    required this.type,
  });
}

enum ProductType {
  coffee(),
  frappe(),
  tea(),
  cake(),
  waffle(),
  sandwich(),
}

List<Product> products = [
  Product(name: "Chocolate Cake", image: "cake_2.jpeg", price: 120, starCount: 5, type: ProductType.cake),
  Product(name: "Tiramisu", image: "cake_1.jpeg", price: 130, starCount: 5, type: ProductType.cake),
  Product(name: "Cheese Cake", image: "cake_2.jpeg", price: 125, starCount: 5, type: ProductType.cake),
  Product(name: "Latte", image: "coffee_1.jpeg", price: 190, starCount: 5, type: ProductType.coffee),
  Product(name: "Turkish Coffee", image: "coffee_2.jpeg", price: 180, starCount: 5, type: ProductType.coffee),
  Product(name: "Frappe", image: "frappe_1.jpeg", price: 185, starCount: 5, type: ProductType.frappe),
  Product(name: "Sandwich-1", image: "sandvic_1.jpeg", price: 250, starCount: 5, type: ProductType.sandwich),
  Product(name: "Sandwich-2", image: "sandvic_2.jpeg", price: 250, starCount: 5, type: ProductType.sandwich),
  Product(name: "Sandwich-3", image: "sandvic_3.jpeg", price: 250, starCount: 5, type: ProductType.sandwich),
  Product(name: "Sandwich-4", image: "sandvic_4.jpeg", price: 250, starCount: 5, type: ProductType.sandwich),
  Product(name: "Sandwich-5", image: "sandvic_5.jpeg", price: 250, starCount: 5, type: ProductType.sandwich),
  Product(name: "Tea-1", image: "tea_1.jpeg", price: 35, starCount: 5, type: ProductType.tea),
  Product(name: "Tea-2", image: "tea_2.jpeg", price: 35, starCount: 5, type: ProductType.tea),
  Product(name: "Waffle-1", image: "waffle_1.jpeg", price: 275, starCount: 5, type: ProductType.waffle),
];
