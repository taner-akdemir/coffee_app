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
      padding: const EdgeInsets.only(bottom: 15),
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
              width: double.infinity,
              height: 250,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(1, 4, 1, 0),
                child: Image.asset(
                  "assets/img/products/${product.image}",
                  fit: BoxFit.cover,
                  color: AppColors.secondaryCreamColor,
                  colorBlendMode: BlendMode.darken,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
                              fontSize: 22
                          ),
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      Text(
                        "${product.price} ₺",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      for (int i = 0; i < product.starCount; i++)
                        Icon(Icons.star, color: Colors.orange),
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
                              Radius.circular(10),
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
    );;
  }
}
