import 'package:coffee/screens/cart/cart_screen.dart';
import 'package:coffee/screens/product_list/product_list.dart';
import 'package:coffee/theme.dart';
import 'package:flutter/material.dart';
import 'package:coffee/screens/home/home.dart';

import '../models/category.dart' as category;

class BottomNavigatorBar extends StatefulWidget {
  const BottomNavigatorBar({super.key});

  @override
  State<BottomNavigatorBar> createState() => _BottomNavigatorBarState();
}

class _BottomNavigatorBarState extends State<BottomNavigatorBar> {

  int currentPageIndex = 0;
  late List<Widget> pages;
  late Home home;
  late ProductList productList;

  @override
  void initState() {
    home = Home();
    pages = <Widget>[home];
    super.initState();
  }

  @override
  void dispose() {
    debugPrint("Home dispose");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Navigator(
          onGenerateRoute: (settings) {
            Widget page = Home();
            return MaterialPageRoute(builder: (_) => page);
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColors.secondaryCreamColor,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.menu_book_rounded), label: "Menu"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box_outlined),
              label: "Profile",
            ),
          ],
          type: BottomNavigationBarType.fixed,
          //fixedColor: Colors.white,
          selectedItemColor: AppColors.primaryDarkBrownColor,
          unselectedItemColor: AppColors.primaryBrownColor,
          currentIndex: currentPageIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          onTap: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
        )
    );
  }
}
