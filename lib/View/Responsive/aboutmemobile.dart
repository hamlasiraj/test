import 'package:flutter/material.dart';
import '../Widget/leftAbout.dart';
import '../Widget/mobileBar.dart';
import '../Widget/rightAbout.dart';
import 'package:cached_network_image/cached_network_image.dart';

class AboutMeMobile extends StatelessWidget {
  const AboutMeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
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
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
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
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const Align(alignment: Alignment.center, child: LeftAbout()),
                SizedBox(height: screensize.height / 12),
                const Align(alignment: Alignment.center, child: RightAbout()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
