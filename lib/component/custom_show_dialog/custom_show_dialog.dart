import 'package:flutter/material.dart';

import '../../theme.dart';
import '../custom_text/custom_text.dart';

class CustomShowDialog extends StatelessWidget {
  final String title, contentText;
  final TextStyle? titleTextStyle, contentTextStyle;
  final List<ButtonStyleButton>? actions;

  const CustomShowDialog({
    super.key,
    required this.title,
    required this.contentText,
    this.titleTextStyle,
    this.contentTextStyle,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      //title: CustomText(text: title, textStyle: titleTextStyle),
      //contentPadding: EdgeInsets.all(0),
      content: SizedBox(
        width: 350,
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(text: title, textStyle: titleTextStyle),
            SizedBox(height: 5),
            Divider(color: Colors.black, height: 4.0),
            SizedBox(height: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(text: contentText, textStyle: contentTextStyle),
                ],
              ),
            ),
          ],
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      backgroundColor: Colors.white,
      elevation: 3,
      shadowColor: AppColors.primaryBrownColor,
      actions: actions != null && actions!.isNotEmpty
          ? actions!.map((btn) {
              return btn;
            }).toList()
          : [
              SizedBox(
                width: 100,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.grey[400]),
                  child: CustomText(
                    text: "OK",
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
    );
  }
}
