import 'package:flutter/material.dart';

import '../../theme.dart';

class CustomTextFormField extends StatefulWidget {
  final void Function(String? val) onChanged, onSaved;
  final String? validatorMessage, hintText;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final int? maxLength;
  final InputDecoration? inputDecoration;

  const CustomTextFormField({
    super.key,
    required this.onChanged,
    required this.onSaved,
    this.validatorMessage,
    this.inputType,
    this.inputAction,
    this.maxLength,
    this.hintText,
    this.inputDecoration,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late String text;

  @override
  Widget build(BuildContext context) {
    InputDecoration inputDecorationInternal = InputDecoration(
      counter: Offstage(),
      hintText: widget.hintText,
      labelStyle: TextStyle(color: AppColors.primaryBrownColor),
      hintStyle: TextStyle(color: AppColors.primaryBrownColor),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.secondaryCreamColor, width: 2),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.secondaryCreamColor, width: 2),
      ),
      errorStyle: TextStyle(color: Colors.red),
    );

    return TextFormField(
      keyboardType: widget.inputType ?? TextInputType.text,
      textInputAction: widget.inputAction ?? TextInputAction.next,
      maxLength: widget.maxLength ?? -1 >>> 1,
      decoration: widget.inputDecoration ?? inputDecorationInternal,
      onSaved: (String? val) {
        if (val != null) {
          text = val;
          widget.onSaved(val);
        }
      },
      onChanged: (String val) {
        setState(() {
          widget.onChanged(val);
        });
      },
      validator: (String? val) {
        return val == null || val.isEmpty
            ? widget.validatorMessage!.isEmpty
                  ? "not valid"
                  : ""
            : null;
      },
    );
  }
}
