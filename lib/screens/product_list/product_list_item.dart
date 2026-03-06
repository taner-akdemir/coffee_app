import 'package:coffee/component/qty/qty.dart';
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

  int qty = 0;

  void setCount(int count) {
    qty = count;
  }



  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    final padding = MediaQuery.of(context).viewPadding;
    double width = size.width;
    double height = size.height-padding.top - kToolbarHeight;

    return GestureDetector(
      onTap: () {
        debugPrint(widget.product.name);
      },
      child: Container(
        /*      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),*/
        //elevation: 0,
        //FractionallySizedBox
        color: Colors.transparent,
        padding: const EdgeInsets.all(8.0),
        height: height/4.3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: width * 0.3 - 8,
              child: Center(
                child: Image.asset(
                  "assets/img/products/${widget.product.image}",
                  fit: BoxFit.contain,
                  color: AppColors.scaffoldColor,
                  colorBlendMode: BlendMode.darken,
                ),
              ),
            ),
            SizedBox(width: 12,),
            SizedBox(
              width: width - (width * 0.3) -30,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.name,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: AppColors.primaryBrownColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "${widget.product.price} ₺",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: AppColors.primaryBrownColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(width: 120, child: Qty(callback: setCount)),
                  SizedBox(height: 10),
                  SizedBox(
                    width: width - (width * 0.3) - 30,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.buttonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "add",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.secondaryCreamColor,
                          ),
                        ),
                      ),
                    ),
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
