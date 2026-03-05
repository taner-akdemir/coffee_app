import 'package:coffee/models/product.dart';

class Cart {

  final Product product;
  final double qty;
  final Size size;

  const Cart({required this.product, this.qty = 1, required this.size});

}

enum Size {
  large(name: 'large', title: "Large"),
  medium(name: 'medium', title: "Medium"),
  small(name: 'small', title: "Small");

  const Size({
    required this.name,
    required this.title,
  });

  final String name, title;
}