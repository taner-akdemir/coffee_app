import '../component/category_icon_button/category_icon_button.dart';


enum Category {
  coffee(
    name: "coffee",
    title: "Coffee",
    image: "coffee_white_bg.jpeg",
  ),
  frappe(
    name: "frappe",
    title: "Frappe",
    image: "ux_ninja.jpg",
  ),
  tea(
    name: "tea",
    title: "Tea",
    image: "tea_white_bg.jpeg",
  ),
  cake(
    name: "cake",
    title: "Cake",
    image: "cake_1_white_bg.jpeg",
  ),
  waffle(
    name: "waffle",
    title: "Waffle",
    image: "waffle_1.jpeg",
  ),
  sandwich(
    name: "sandwich",
    title: "Sandwich",
    image: "sandwich_white_bg.jpeg",
  );

  const Category({
    required this.title,
    required this.name,
    required this.image,
  });

  final String name;
  final String title;
  final String image;
}


List<CategoryItem> pibs = [
  CategoryItem(
    category: Category.coffee,
  ),
  CategoryItem(
    category: Category.sandwich,
  ),
  CategoryItem(
    category: Category.tea,
  ),
  CategoryItem(
    category: Category.cake,
  ),
  CategoryItem(
    category: Category.waffle,
  ),
];

