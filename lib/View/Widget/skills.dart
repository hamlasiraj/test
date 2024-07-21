import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio/Controller/responsive.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("I Am Into ",
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Roboto",
                fontSize: Responsive.isDesktop(context) ? 30 : 15,
                fontWeight: FontWeight.bold)),
        AnimatedTextKit(repeatForever: true, animatedTexts: [
          TyperAnimatedText('Mobile Development',
              textStyle: TextStyle(
                  fontFamily: "Roboto",
                  color: Colors.red[900],
                  fontSize: Responsive.isDesktop(context) ? 30 : 15,
                  fontWeight: FontWeight.bold)),
          TyperAnimatedText('Web Development',
              textStyle: TextStyle(
                  fontFamily: "Roboto",
                  color: Colors.red[900],
                  fontSize: Responsive.isDesktop(context) ? 30 : 15,
                  fontWeight: FontWeight.bold)),
          TyperAnimatedText('Graphic Designing',
              textStyle: TextStyle(
                  fontFamily: "Roboto",
                  color: Colors.red[900],
                  fontSize: Responsive.isDesktop(context) ? 30 : 15,
                  fontWeight: FontWeight.bold)),
        ]),
      ],
    );
  }
}
