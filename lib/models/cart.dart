import 'package:coffee/models/product.dart';

import 'ingredient.dart';

class Cart {

  final Product product;
  final double qty;
  final Unit unit;

  const Cart({required this.product, this.qty = 1, required this.unit});

}