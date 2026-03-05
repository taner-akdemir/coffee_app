import 'package:coffee/component/custom_show_dialog/custom_show_dialog.dart';
import 'package:coffee/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../component/custom_elevated_icon_button/custom_elevated_icon_button.dart';
import '../../component/custom_text_form_field/custom_text_form_field.dart';
import '../cart/cart_icon.dart';

class PaymentScreen extends ConsumerStatefulWidget {
  const PaymentScreen({super.key});

  @override
  ConsumerState<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends ConsumerState<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    late String cardHolder = "",
        cardNumber = "",
        expireMonth = "",
        expireYear = "",
        cvv = "";

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pay',
          style: GoogleFonts.poppins(
            textStyle: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        actions: [CartIcon()],
      ),
      body: Center(
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextFormField(
                  hintText: "Card Holder",
                  validatorMessage: "card holder is invalid",
                  onChanged: (String? val) {
                    setState(() {});
                  },
                  onSaved: (String? val) {
                    if (val != null) {
                      cardHolder = val;
                    }
                  },
                ),

                SizedBox(height: 10),
                CustomTextFormField(
                  hintText: "Card Number",
                  validatorMessage: "card number is invalid",
                  onChanged: (String? val) {
                    setState(() {});
                  },
                  onSaved: (String? val) {
                    if (val != null) {
                      cardNumber = val;
                    }
                  },
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomTextFormField(
                        hintText: "mm",
                        validatorMessage: "expire month is invalid",
                        onChanged: (String? val) {
                          setState(() {});
                        },
                        onSaved: (String? val) {
                          if (val != null) {
                            expireMonth = val;
                          }
                        },
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 1,
                      child: CustomTextFormField(
                        hintText: "yy",
                        validatorMessage: "expire year is invalid",
                        onChanged: (String? val) {
                          setState(() {});
                        },
                        onSaved: (String? val) {
                          if (val != null) {
                            expireYear = val;
                          }
                        },
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 1,
                      child: CustomTextFormField(
                        hintText: "cvv",
                        validatorMessage: "cvv is invalid",
                        onChanged: (String? val) {
                          setState(() {});
                        },
                        onSaved: (String? val) {
                          if (val != null) {
                            cvv = val;
                          }
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                CustomElevatedIconButton(
                  paddingBottom: 12,
                  paddingLeft: 12,
                  paddingTop: 12,
                  paddingRight: 12,
                  onPressed: () {
                    if (formKey.currentState == null) {
                      showDialog(
                        context: context,
                        builder: (ctx) {
                          return CustomShowDialog(
                            title: 'Error',
                            contentText: 'form is empty',
                          );
                        },
                      );
                      return;
                    }
                    bool isValid = formKey.currentState!.validate();
                    if (!isValid) {
                      showDialog(
                        context: context,
                        builder: (ctx) {
                          return CustomShowDialog(
                            title: 'Error',
                            contentText: 'form is not valid',
                          );
                        },
                      );
                    }
                    formKey.currentState!.save();
                    formKey.currentState!.reset();
                  },
                  labelText: 'Pay',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
