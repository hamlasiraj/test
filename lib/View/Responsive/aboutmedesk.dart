import 'package:flutter/material.dart';
import '../Widget/desktopBar.dart';
import '../Widget/leftAbout.dart';
import '../Widget/rightAbout.dart';

class AboutMeDesk extends StatelessWidget {
  const AboutMeDesk({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF121212),
      body: Column(
        children: [
          DesktopTopBar(),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                color: Colors.white,
                Icons.account_circle_rounded,
                size: 40,
              ),
              SizedBox(width: 5),
              Text('About Me',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child:
                      Align(alignment: Alignment.center, child: LeftAbout())),
              Expanded(
                  child:
                      Align(alignment: Alignment.center, child: RightAbout())),
            ],
          ),
        ],
      ),
    );
  }
}
