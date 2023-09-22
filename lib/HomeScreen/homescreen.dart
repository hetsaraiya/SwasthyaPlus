import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:swasthya/UiElements/TextAndColor.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mycolors().Bgcolor,
      body: Column(
        children: [
          
          Container(
            padding: const EdgeInsets.only(left: 10, top: 45),
            child: const Row(
              children: [
                CircleAvatar(),
                SizedBox(width: 40),
                Text(
                  'userName',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 32),
                ),
                // Image.asset('C:/Users/hp/Desktop/swa/swasthya/assets/images/icons/NotificationIcon.png')
              ],
            ),
          ),
          const SizedBox(height: 50,),
          const Text('Good Time userName', textAlign: TextAlign.left, style: TextStyle(color: Colors.white ),),
          const SizedBox(
            height: 60,
          ),
          const Text('Take A Free Test', style: TextStyle( color: Colors.white),)
        ],
      ),
    );
  }
}
