import 'package:coffee/screens/bottom_navigator_bar.dart';
import 'package:coffee/screens/login/login.dart';
import 'package:coffee/screens/splash/splash.dart';
import 'package:coffee/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee',
      theme: primaryTheme,
      //home: const Home(),
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings){
        switch (settings.name) {
          case '/splash':
            return routeBuilder(settings, Splash());
          case '/login':
            return routeBuilder(settings, Login());
          case '/':
            return routeBuilder(settings, BottomNavigatorBar());
          default:
            if (defaultTargetPlatform == TargetPlatform.iOS) {
              return CupertinoPageRoute(
                builder: (context) => Scaffold(
                  appBar: AppBar(title: Text("error")),
                  body: Center(child: Text("404 not found")),
                ),
              );
            }
            return MaterialPageRoute(
              builder: (context) => Scaffold(
                appBar: AppBar(title: Text("error")),
                body: Center(child: Text("404 not found")),
              ),
            );
        }
      },
    );
  }
}

// Generate routes

PageRoute<dynamic> routeBuilder(RouteSettings settings, Widget page){
  if (defaultTargetPlatform == TargetPlatform.iOS) {
    return CupertinoPageRoute(
      builder: (context) => page,
      settings: settings,
    );
  }
  return MaterialPageRoute(
    builder: (context) => page,
    settings: settings,
  );
}