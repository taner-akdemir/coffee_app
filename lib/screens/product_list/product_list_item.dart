import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/product.dart';
import '../../theme.dart';

class ProductListItem extends StatefulWidget {
  final Product product;

  const ProductListItem({super.key, required this.product});

  @override
  State<ProductListItem> createState() => _ProductListItemState();
}

class _ProductListItemState extends State<ProductListItem> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint(widget.product.name);
      },
      child: Card(
        /*      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),*/
        elevation: 0,
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 150,
                child: Image.asset(
                  "assets/img/products/${widget.product.image}",
                  fit: BoxFit.cover,
                  color: AppColors.scaffoldColor,
                  colorBlendMode: BlendMode.darken,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.product.name,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: AppColors.primaryBrownColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                    ),
                    Text(
                      "${widget.product.price} ₺",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: AppColors.primaryBrownColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.buttonColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "add cart",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.secondaryCreamColor,
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
      ),
    );
  }
}
