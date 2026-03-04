import 'package:coffee/providers/cart_provider.dart';
import 'package:coffee/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../component/product_list_card/product_list_card.dart';
import '../../models/product.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
  ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final cartProducts = ref.watch(cartProvider);
    final total = ref.watch(cartTotalProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Cart',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(color: AppColors.secondaryCreamColor),
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.primaryBrownColor,
        iconTheme: IconThemeData(color: AppColors.secondaryCreamColor),
        // actions: [],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 12, right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total: ",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: AppColors.primaryDarkBrownColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                Text(
                  "$total ₺",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: AppColors.primaryDarkBrownColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: cartProducts.isNotEmpty
                  ? ListView.builder(
                      itemCount: cartProducts.length,
                      itemBuilder: (context, index) {
                        Product p = cartProducts.elementAt(index);
                        return ProductListCard(product: p);
                      },
                    )
                  : Center(
                      child: Text(
                        "No product in your cart",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: AppColors.primaryBrownColor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {},
                label: Text(
                  "Pay",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                icon: Icon(Icons.payment, color: Colors.white),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.buttonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
