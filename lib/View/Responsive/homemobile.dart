import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Core/Constant/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Widget/bitmoji.dart';
import '../Widget/button.dart';
import '../Widget/iconrow.dart';
import '../Widget/mobileBar.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../Widget/skills.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({super.key});

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

Future _launchURL(String url) async {
  final Uri uri = Uri.parse(url);
  if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    throw 'can not launch url';
  }
}

class _HomeMobileState extends State<HomeMobile> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
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
      body: AnimatedBackground(
        behaviour: RandomParticleBehaviour(
          options: const ParticleOptions(
            baseColor: Color.fromARGB(255, 189, 220, 245),
            spawnOpacity: 0.4,
            opacityChangeRate: 0.25,
            minOpacity: 0.3,
            spawnMinSpeed: 10.00,
            spawnMaxSpeed: 50.0,
            spawnMaxRadius: 50,
            particleCount: 40,
          ),
        ),
        vsync: this,
        child: ListView(
          shrinkWrap: true,
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  Text('Hi There,',
                      style: TextStyle(
                        fontFamily: 'Lilita_One',
                        color: AppColors.blue,
                        fontSize: 30,
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("I'm Hamla ",
                          style: TextStyle(
                            fontFamily: 'Lilita_One',
                            color: AppColors.blue,
                            fontSize: 30,
                          )),
                      Text("Siraj Eddine",
                          style: TextStyle(
                            fontFamily: 'Lilita_One',
                            color: Colors.yellow[900],
                            fontSize: 30,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Skills(),
                  const SizedBox(height: 10),
                  SizedBox(
                      width: 170,
                      child: Column(children: [
                        MyButton(),
                        const SizedBox(height: 5),
                        const IconRow()
                      ])),
                  const SizedBox(height: 50),
                ]),
            const Align(alignment: Alignment.center, child: Bitmoji()),
          ],
        ),
      ),
    );
  }
}
