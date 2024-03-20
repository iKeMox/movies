import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movies_app/layout/layout_view.dart';

class SplashWiew extends StatefulWidget {
  static const String routeName = "/";

  const SplashWiew({super.key});

  @override
  State<SplashWiew> createState() => _SplashWiewState();
}

class _SplashWiewState extends State<SplashWiew> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(
          context,
          LayoutView.routeName,
        );
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Image.asset(
          "assets/images/movies.png",
          height: mediaQuery.height / 2,
          width: mediaQuery.width / 2,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
