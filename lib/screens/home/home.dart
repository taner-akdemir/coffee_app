import 'package:coffee/models/product.dart';
import 'package:coffee/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../component/product_list_card/product_list_card.dart';
import '../../component/search_text_field/search_text_field.dart';
import '../../models/product_menu.dart';
import '../cart/cart_icon.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CafeApp',
          style: GoogleFonts.poppins(
            textStyle: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        actions: [CartIcon()],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchTextField(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Card(
              color: AppColors.secondaryCreamColor,
              elevation: 2,
              shadowColor: AppColors.primaryBrownColor,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: pibs.map((p) {
                    return p;
                  }).toList(),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          const Text("Products", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          SizedBox(
            height: 500,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  Product p = products[index];
                  return ProductListCard(product: p,);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
