import 'package:coffee/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  //final Function() onPressed;

  const CategoryItem({
    super.key,
    required this.category,
    //required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: TextButton(
        onPressed: (){
          Navigator.pushNamed(context, "/productList", arguments: category);
        },
        child: Column(
          children: [
            SizedBox(
              height: 80,
              child: Image.asset(
                "assets/img/products/${category.image}",
                fit: BoxFit.cover,
                color: AppColors.secondaryCreamColor,
                colorBlendMode: BlendMode.darken,
              ),
            ),
            SizedBox(height: 10),
            if (category.title.trim() != "")
              Text(
                category.title,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
