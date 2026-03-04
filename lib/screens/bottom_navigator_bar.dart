import 'package:coffee/screens/cart/cart_screen.dart';
import 'package:coffee/screens/product_list/product_list.dart';
import 'package:coffee/screens/splash/splash.dart';
import 'package:coffee/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:coffee/screens/home/home.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../models/category.dart' as category;
import 'login/login.dart';

class BottomNavigatorBar extends StatefulWidget {
  const BottomNavigatorBar({super.key});

  @override
  State<BottomNavigatorBar> createState() => _BottomNavigatorBarState();
}

class _BottomNavigatorBarState extends State<BottomNavigatorBar> {
  int currentPageIndex = 0;
  late List<Widget> pages;
  late Home home;
  late CartScreen cartScreen;
  late ProductList productList;

  @override
  void initState() {
    home = Home();
    cartScreen = CartScreen();
    pages = <Widget>[home, home, cartScreen, home];
    super.initState();
  }

  @override
  void dispose() {
    debugPrint("Home dispose");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    PersistentTabController controller = PersistentTabController(
      initialIndex: 0,
    );

    RouteAndNavigatorSettings routeAndNavigatorSettings =
        RouteAndNavigatorSettings(
          initialRoute: "/home",
          onGenerateRoute: (settings) {
            switch (settings.name) {
              case '/splash':
                return routeBuilder(settings, Splash());
              case '/login':
                return routeBuilder(settings, Login());
              case '/productList':
                return routeBuilder(
                  settings,
                  ProductList(
                    category: settings.arguments as category.Category,
                  ),
                );
              case '/home':
                return routeBuilder(settings, Home());
              case '/cart':
                return routeBuilder(settings, CartScreen());
              default:
                return null;
            }
          },
        );

    List<PersistentBottomNavBarItem> navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: Icon(
            CupertinoIcons.home,
            color: AppColors.primaryDarkBrownColor,
          ),
          title: ("Home"),
          activeColorPrimary: AppColors.primaryBrownColor,
          inactiveColorPrimary: CupertinoColors.systemGrey,
          routeAndNavigatorSettings: routeAndNavigatorSettings,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.menu_book, color: AppColors.primaryDarkBrownColor),
          title: ("Menu"),
          activeColorPrimary: AppColors.primaryBrownColor,
          inactiveColorPrimary: CupertinoColors.systemGrey,
          routeAndNavigatorSettings: routeAndNavigatorSettings,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(
            Icons.shopping_cart,
            color: AppColors.primaryDarkBrownColor,
          ),
          title: ("Cart"),
          activeColorPrimary: AppColors.primaryBrownColor,
          inactiveColorPrimary: CupertinoColors.systemGrey,
          routeAndNavigatorSettings: routeAndNavigatorSettings,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(
            CupertinoIcons.profile_circled,
            color: AppColors.primaryDarkBrownColor,
          ),
          title: ("Profile"),
          activeColorPrimary: AppColors.primaryBrownColor,
          inactiveColorPrimary: CupertinoColors.systemGrey,
          routeAndNavigatorSettings: routeAndNavigatorSettings,
        ),
      ];
    }

    return PersistentTabView(
      context,
      controller: controller,
      screens: pages,
      items: navBarsItems(),
      handleAndroidBackButtonPress: true,
      // Default is true.
      resizeToAvoidBottomInset: true,
      // This needs to be true if you want to move up the screen on a non-scrollable screen when keyboard appears. Default is true.
      stateManagement: true,
      // Default is true.
      hideNavigationBarWhenKeyboardAppears: true,
      //popBehaviorOnSelectedNavBarItemPress: PopActionScreensType.all,
      padding: const EdgeInsets.only(top: 8),
      backgroundColor: AppColors.appBarColor,
      isVisible: true,
      /*      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings( // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings( // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          duration: Duration(milliseconds: 200),
          screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
        ),
      ),*/
      confineToSafeArea: true,
      navBarHeight: kBottomNavigationBarHeight,
      //navBarStyle: _navBarStyle, // Choose the nav bar style with this property
    );
  }
}

PageRoute<dynamic> routeBuilder(RouteSettings settings, Widget page) {
  if (defaultTargetPlatform == TargetPlatform.iOS) {
    return CupertinoPageRoute(builder: (context) => page, settings: settings);
  }
  return MaterialPageRoute(builder: (context) => page, settings: settings);
}
