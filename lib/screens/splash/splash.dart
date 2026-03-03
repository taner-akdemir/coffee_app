import 'dart:async';

import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _Splash();
}

class _Splash extends State<Splash> {
  late Timer _timer;

  @override
  void initState() {
    _timer = Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, "/login");
    });

    super.initState();
  }

  @override
  void dispose() {
    debugPrint("Splash dispose");
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Basistek",
          style: TextStyle(
            fontFamily: "Pacifico",
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
