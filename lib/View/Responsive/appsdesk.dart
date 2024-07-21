import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/View/Widget/appsgrid.dart';
import '../Widget/appbox.dart';
import '../Widget/desktopBar.dart';

class AppsDesk extends StatelessWidget {
  const AppsDesk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: ListView(
        children: [
          const DesktopTopBar(),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              FaIcon(
                color: Colors.white,
                FontAwesomeIcons.mobileScreen,
                size: 40,
              ),
              SizedBox(width: 5),
              Text('My Apps',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 20),
          const AppsGrid(),
        ],
      ),
    );
  }
}
