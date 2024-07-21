import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/View/Widget/appsgrid.dart';
import '../Widget/appbox.dart';
import '../Widget/mobileBar.dart';
import 'package:cached_network_image/cached_network_image.dart';

class AppsMobile extends StatelessWidget {
  const AppsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        actions: [
          SizedBox(
            height: 50,
            width: 50,
            child: CachedNetworkImage(
                imageUrl:
                    "https://drive.google.com/uc?export=view&id=13iLSxSXbS7ONnKSdo4QiSvWI_kUhRPF6"),
          ),
          const SizedBox(width: 10),
        ],
        backgroundColor: Colors.grey[850],
        foregroundColor: Colors.white,
      ),
      drawer: const MobileTopBar(),
      body: ListView(
        shrinkWrap: true,
        children: [
          const SizedBox(height: 10),
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
                      fontSize: 20,
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
