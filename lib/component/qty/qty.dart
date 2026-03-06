import 'package:coffee/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Qty extends StatefulWidget {

  final Function(int count) callback;
  const Qty({super.key, required this.callback});

  @override
  State<Qty> createState() => _QtyState();
}

class _QtyState extends State<Qty> {

  int count = 0;

  void increase(){
    setState(() {
      count++;
    });
  }

  void decrease(){
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: IconButton(
            onPressed: () {
              decrease();
            },
            icon: Icon(Icons.remove, color: AppColors.secondaryCreamColor,),
            style: IconButton.styleFrom(
              backgroundColor: AppColors.iconButtonBGColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  topLeft: Radius.circular(5),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.white,
            //height: MediaQuery.of(context).size.height,
            height: 40,
            alignment: Alignment.center,
            child: Text(
              "$count",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: IconButton(
            onPressed: () {
              increase();
            },
            icon: Icon(Icons.add,color: AppColors.secondaryCreamColor,),
            style: IconButton.styleFrom(
              backgroundColor: AppColors.iconButtonBGColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
