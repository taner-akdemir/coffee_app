import 'package:coffee/screens/product_list/product_list_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/category.dart';
import '../../models/product.dart';
import '../cart/cart_icon.dart';

class ProductList extends StatefulWidget {
  final Category category;

  const ProductList({super.key, required this.category});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    List<Product> filteredProducts = products
        .where((p) => p.category.name == widget.category.name)
        .toList();
    debugPrint(filteredProducts.length.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.category.title,
          style: GoogleFonts.poppins(
            textStyle: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        actions: [CartIcon()],
      ),
      body: Column(
        children: [
          Row(children: []),
          Expanded(
            child: ListView.separated(
              itemCount: filteredProducts.length,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                Product product = filteredProducts[index];
                return ProductListItem(product: product);
              },
              separatorBuilder: (BuildContext context, int index) =>
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                    child: const Divider(thickness: 1),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
