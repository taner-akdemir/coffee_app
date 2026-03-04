import 'package:coffee/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/product.dart';
import '../../theme.dart';

class ProductListCard extends ConsumerWidget {

  final Product product;
  const ProductListCard({super.key, required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final cartProducts = ref.watch(cartProvider);

    final List<String> prdIdsInCart = cartProducts.map((p){return p.id;}).toList();

    if(product.starCount>5){
      product.starCount = 5;
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Card(
        elevation: 2,
        shadowColor: AppColors.primaryBrownColor,
        color: AppColors.secondaryCreamColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 200,
              child: Image.asset(
                "assets/img/products/${product.image}",
                fit: BoxFit.contain,
                color: AppColors.secondaryCreamColor,
                colorBlendMode: BlendMode.darken,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        product.name,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                              fontSize: 21
                          ),
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      Text(
                        "${product.price} ₺",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 21
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      for (int i = 0; i < product.starCount; i++)
                        Icon(Icons.star, color: Colors.orange, size: 20,),
                      if( product.starCount<5)
                        Icon(Icons.star_outline, color: Colors.orange, size: 20,),
                      Expanded(child: SizedBox()),
                      if(!prdIdsInCart.contains(product.id))
                      ElevatedButton.icon(
                        onPressed: () {
                          ref.watch(cartProvider.notifier).addProduct(product);
                        },
                        label: Text(
                          "add",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18
                            ),
                          ),
                        ),
                        icon: Icon(Icons.add, color: Colors.white,),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.buttonColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      if(prdIdsInCart.contains(product.id))
                        ElevatedButton.icon(
                          onPressed: () {
                            ref.watch(cartProvider.notifier).removeProduct(product);
                          },
                          label: Text(
                            "remove",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18
                              ),
                            ),
                          ),
                          icon: Icon(Icons.remove, color: Colors.white,),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.buttonColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
