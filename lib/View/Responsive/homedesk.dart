import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Controller/responsive.dart';
import 'package:portfolio/Core/Constant/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:sizer/sizer.dart';
import '../Widget/bitmoji.dart';
import '../Widget/button.dart';
import '../Widget/desktopBar.dart';
import '../Widget/iconrow.dart';
import '../Widget/skills.dart';

class HomeDesk extends StatefulWidget {
  const HomeDesk({super.key});

  @override
  State<HomeDesk> createState() => _HomeDeskState();
}

Future _launchURL(String url) async {
  final Uri uri = Uri.parse(url);
  if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    throw 'can not launch url';
  }
}

class _HomeDeskState extends State<HomeDesk> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
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
          physics: const NeverScrollableScrollPhysics(),
          children: [
            const DesktopTopBar(),
            const SizedBox(height: 70),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: screenSize.width * 0.10),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('Hi There,',
                      style: TextStyle(
                        fontFamily: 'Lilita_One',
                        color: AppColors.blue,
                        fontSize: 50,
                      )),
                  Row(
                    children: [
                      Text("I'm Hamla ",
                          style: TextStyle(
                            fontFamily: 'Lilita_One',
                            color: AppColors.blue,
                            fontSize: 50,
                          )),
                      Text("Siraj Eddine",
                          style: TextStyle(
                            fontFamily: 'Lilita_One',
                            color: Colors.yellow[900],
                            fontSize: 50,
                          )),
                    ],
                  ),
                  const Skills(),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 200,
                    child: Column(
                      children: [
                        MyButton(),
                        const SizedBox(height: 5),
                        const IconRow()
                      ],
                    ),
                  ),
                ]),
                SizedBox(width: screenSize.width * 0.05),
                const Expanded(
                    child: Align(alignment: Alignment.center, child: Bitmoji()))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
