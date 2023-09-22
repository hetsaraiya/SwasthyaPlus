import 'package:flutter/material.dart';
import 'package:swasthya/HomeScreen/homescreen.dart';
import 'package:swasthya/UiElements/TextAndColor.dart';

// Custom Button ....

// ignore: camel_case_types
class elevateMinibutton extends StatelessWidget {
  final String label;
  const elevateMinibutton( {super.key,  required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0.73, 0.87),
      padding: EdgeInsets.all(5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: mycolors().Blue,
            shadowColor: Color.fromRGBO(0, 163, 255, 0.40),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            )),
        onPressed: () => {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Home_Screen(),),),
          print('pressed')
        },
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
          child: Text(
            "$label",
            style: const TextStyle(
                fontFamily: "Poppins_Bold", fontSize: 18, letterSpacing: 1.5),
          ),
        ),
      ),
    );
  }
}
