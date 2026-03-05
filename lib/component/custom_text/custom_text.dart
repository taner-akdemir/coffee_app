import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;

  const CustomText({super.key, required this.text, this.textStyle});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyleDefault = GoogleFonts.poppins(
      textStyle: Theme.of(context).textTheme.headlineMedium,
    );

    return Text(
      text,
      style: GoogleFonts.poppins(textStyle: textStyle ?? textStyleDefault),
    );
  }
}
