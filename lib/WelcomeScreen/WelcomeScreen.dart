import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:swasthya/UiElements/buttons.dart';
import 'package:swasthya/UiElements/TextAndColor.dart';
import 'package:swasthya/WelcomeScreen/anxietytest.dart';
import 'package:swasthya/WelcomeScreen/chatbot.dart';
import 'package:swasthya/WelcomeScreen/counsellor.dart';
import 'package:swasthya/WelcomeScreen/depressiontest.dart';
import 'package:swasthya/WelcomeScreen/overthinkingtest.dart';

class Welcomescreen extends StatefulWidget {
  const Welcomescreen({super.key});

  @override
  State<Welcomescreen> createState() => _welcomescreenState();
}

class _welcomescreenState extends State<Welcomescreen> {
  // Controller for which page we see currently
  final PageController _controller = PageController();
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mycolors().Bgcolor,
      body: Stack(children: [
        //Page View
        PageView(
          controller: _controller,
          children: const [
            //Anxiety Test
            anxietytest(),

            //Depression Test
            depressiontest(),
            // Overthinking Test
            overthinkingtest(),
            //Live Chat Bot
            chatbot(),

            // Counselor Support
            counsellor(),
          ],
        ),
        Container(
            alignment: const Alignment(0, 0.67),
            child: SmoothPageIndicator(controller: _controller, count: 5)),
        const elevateMinibutton(
          label: 'Next',
        ),
      ]),
    );
  }
}
