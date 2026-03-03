import 'package:flutter/cupertino.dart';

import '../component/product_icon_button/product_icon_button.dart';

List<ProductIconButton> pibs = [
  ProductIconButton(
    image: "coffee_white_bg.jpeg",
    id: 1,
    onPressed: () {
      debugPrint("1");
    },
    btnText: 'Coffee',
  ),
  ProductIconButton(
    image: "sandwich_white_bg.jpeg",
    id: 2,
    onPressed: () {
      debugPrint("2");
    },
    btnText: 'Sandwich',
  ),
  ProductIconButton(
    image: "tea_white_bg.jpeg",
    id: 3,
    onPressed: () {
      debugPrint("3");
    },
    btnText: 'Tea',
  ),
  ProductIconButton(
    image: "cake_1_white_bg.jpeg",
    id: 4,
    onPressed: () {
      debugPrint("4");
    },
    btnText: 'Cake',
  ),
];
