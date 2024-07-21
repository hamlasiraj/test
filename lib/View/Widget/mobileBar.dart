import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../Screen/about.dart';
import '../Screen/apps.dart';
import '../Screen/home.dart';

class MobileTopBar extends StatelessWidget {
  const MobileTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Drawer(
      backgroundColor: Colors.grey[850],
      child: Column(
        children: [
          SizedBox(
            height: screenSize.height / 10,
          ),
          ListTile(
            onTap: () {
              Get.off(const Home());
            },
            leading: const Icon(Icons.home, color: Colors.white),
            title: const Text('Home', style: TextStyle(color: Colors.white)),
          ),
          const Divider(color: Colors.white),
          ListTile(
            onTap: () {
              Get.off(const AboutMe());
            },
            leading:
                const Icon(Icons.account_circle_rounded, color: Colors.white),
            title: const Text('About', style: TextStyle(color: Colors.white)),
          ),
          const Divider(color: Colors.white),
          ListTile(
            onTap: () {
              Get.off(const Apps());
            },
            leading: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 3),
              child: FaIcon(FontAwesomeIcons.mobileScreen, color: Colors.white),
            ),
            title: const Text(
              'Apps',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
