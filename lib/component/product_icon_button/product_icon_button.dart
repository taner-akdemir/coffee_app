import 'package:coffee/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductIconButton extends StatelessWidget {
  final String image;
  final String btnText;
  final dynamic id;
  final Function() onPressed;

  const ProductIconButton({
    super.key,
    required this.image,
    required this.btnText,
    required this.id,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: TextButton(
        onPressed: onPressed,
        child: Column(
          children: [
            SizedBox(
              height: 80,
              child: Image.asset(
                "assets/img/products/$image",
                fit: BoxFit.cover,
                color: AppColors.secondaryCreamColor,
                colorBlendMode: BlendMode.darken,
              ),
            ),
            SizedBox(height: 10),
            if (btnText.trim() != "")
              Text(
                btnText,
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
