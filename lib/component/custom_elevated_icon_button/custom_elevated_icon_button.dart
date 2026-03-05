import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme.dart';

class CustomElevatedIconButton extends StatelessWidget {
  final double? paddingLeft, paddingTop, paddingRight, paddingBottom, height, width;
  final void Function() onPressed;
  final void Function()? onLongPressed, onHover;
  final String labelText;
  final TextStyle? labelTextStyle;
  final Icon? icon;
  final ButtonStyle? buttonStyle;

  const CustomElevatedIconButton({
    super.key,
    this.paddingLeft,
    this.paddingTop,
    this.paddingRight,
    this.paddingBottom,
    required this.onPressed,
    required this.labelText,
    this.labelTextStyle,
    this.icon,
    this.buttonStyle,
    this.onLongPressed, this.onHover, this.height, this.width,
  });

  @override
  Widget build(BuildContext context) {
    TextStyle labelTextStyleDefault = TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontSize: 18,
    );

    Icon iconDefault = Icon(Icons.payment, color: Colors.white);

    ButtonStyle buttonStyleDefault = ElevatedButton.styleFrom(
      backgroundColor: AppColors.buttonColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    );

    return Padding(
      padding: EdgeInsets.fromLTRB(
        paddingLeft ?? 0,
        paddingTop ?? 0,
        paddingRight ?? 0,
        paddingBottom ?? 0,
      ),
      child: SizedBox(
        width: width ?? double.infinity,
        height: height ?? 50,
        child: ElevatedButton.icon(
          onPressed: () {
            onPressed();
          },
          label: Text(
            labelText,
            style: GoogleFonts.poppins(
              textStyle: labelTextStyle ?? labelTextStyleDefault,
            ),
          ),
          icon: icon ?? iconDefault,
          style: buttonStyle ?? buttonStyleDefault,
        ),
      ),
    );
  }
}
