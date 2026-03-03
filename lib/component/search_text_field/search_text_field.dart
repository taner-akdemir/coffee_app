import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({super.key});

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  final _textController = TextEditingController();
  final _searchFocusNode = FocusNode();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  void handleOnChanged(String text) {
    debugPrint(text);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: TextField(
        controller: _textController,
        style: GoogleFonts.poppins(
          textStyle: Theme.of(context).textTheme.bodyMedium,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search, size: 30),
          suffixIcon: IconButton(onPressed: (){
            _textController.clear();
          }, icon: Icon(Icons.clear)),
          contentPadding: EdgeInsets.all(8),
          hintText: "type minimum 3 chars to search...",
          hintStyle: TextStyle(color: AppColors.borderColor),
/*          labelText: "Search",
          labelStyle: TextStyle(color: AppColors.primaryBrownColor, fontWeight: FontWeight.bold),*/
          enabledBorder: OutlineInputBorder(
            //borderSide: BorderSide.none,
            borderSide: BorderSide(color: AppColors.borderColor),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          focusedBorder: OutlineInputBorder(
            //borderSide: BorderSide.none,
            borderSide: BorderSide(color: AppColors.borderColor, width: 1.3),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          filled: true,
          fillColor: AppColors.secondaryCreamColor,
        ),
        cursorColor: AppColors.primaryBrownColor,
        onChanged: handleOnChanged,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.search,
        maxLength: 100,
        obscureText: false, // password text field
        obscuringCharacter: "*",
        cursorWidth: 1,
        onTapOutside: ((event){
          _textController.clear();
          FocusScope.of(context).unfocus();
        }),
        focusNode: _searchFocusNode,
        //onEditingComplete: () => FocusScope.of(context).requestFocus(_searchFocusNode),
      ),
    );
  }
}
