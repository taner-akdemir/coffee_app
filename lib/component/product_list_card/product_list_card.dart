import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/product.dart';
import '../../theme.dart';

class ProductListCard extends StatelessWidget {

  final Product product;
  const ProductListCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
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
              height: 100,
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
                              fontSize: 20
                          ),
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      Text(
                        "${product.price} ₺",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
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
                        Icon(Icons.star, color: Colors.orange, size: 18,),
                      Expanded(child: SizedBox()),
                      ElevatedButton.icon(
                        onPressed: () {},
                        label: Text(
                          "add",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white
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
