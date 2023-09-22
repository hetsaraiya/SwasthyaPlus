import 'dart:async';
import 'WelcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:swasthya/UiElements/TextAndColor.dart';

class Splash_Scr extends StatefulWidget {
  const Splash_Scr({super.key});

  @override
  State<Splash_Scr> createState() => _Splash_ScrState();
}

class _Splash_ScrState extends State<Splash_Scr> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => const Welcomescreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mycolors().Bgcolor,
        body: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: Image.asset("assets/images/logo/logo.png"),
          ),
        ));
  }
}
