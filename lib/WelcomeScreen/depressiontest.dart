import 'package:flutter/material.dart';
import 'package:swasthya/UiElements/TextAndColor.dart';

class depressiontest extends StatefulWidget {
  const depressiontest({super.key});

  @override
  State<depressiontest> createState() => _depressiontestState();
}

class _depressiontestState extends State<depressiontest> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:mycolors().Bgcolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // color: Colors.red,
            alignment: Alignment(0, 0),
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Image.asset("assets/images/illustrations/Diary.gif"),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Depression Test",
            style: TextStyle(
              fontFamily: 'Poppins_Bold',
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum mollis nunc a molestie dictum. Mauris venenatis, felis scelerisque aliquet lacinia, nulla nisi venenatis",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins_SemiBold',
                fontSize: 12,
                height: 1.5,
                letterSpacing: 0.5,
                color: Colors.white,
              ),
            ),
          ),
    ],
      ),
    );
  }
}
