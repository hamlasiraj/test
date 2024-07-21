import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/Controller/responsive.dart';
import 'package:portfolio/Core/Constant/colors.dart';

import '../Screen/about.dart';

class MyButton extends StatefulWidget {
  MyButton({super.key});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.off(const AboutMe());
      },
      child: Container(
          height: 50,
          decoration: BoxDecoration(
              color: AppColors.blue,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                    color: AppColors.blue, blurRadius: 7, spreadRadius: 0.5)
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'About Me',
                style: TextStyle(
                    fontFamily: "Roboto",
                    shadows: const [Shadow(color: Colors.white, blurRadius: 3)],
                    fontSize: Responsive.isDesktop(context) ? 20 : 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              const SizedBox(
                width: 3,
              ),
              const Icon(
                Icons.person_pin_circle_rounded,
                size: 20,
                color: Colors.white,
                shadows: [Shadow(color: Colors.white, blurRadius: 2)],
              ),
            ],
          )),
    );
  }
}
