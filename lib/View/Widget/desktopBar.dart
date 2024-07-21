import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/Core/Constant/colors.dart';
import '../Screen/about.dart';
import '../Screen/apps.dart';
import '../Screen/home.dart';
import 'package:cached_network_image/cached_network_image.dart';

class DesktopTopBar extends StatefulWidget {
  const DesktopTopBar({super.key});

  @override
  State<DesktopTopBar> createState() => _DesktopTopBarState();
}

class _DesktopTopBarState extends State<DesktopTopBar> {
  List<Color> indicateColor = [
    AppColors.blue,
    AppColors.blue,
    AppColors.blue,
    AppColors.blue
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
        decoration: BoxDecoration(color: Colors.grey[850], boxShadow: const [
          BoxShadow(
            blurRadius: 40,
            spreadRadius: 10,
            color: Colors.black54,
          )
        ]),
        height: 80,
        width: screenSize.width,
        child: Row(
          children: [
            SizedBox(width: screenSize.width / 6),
            SizedBox(
              height: 70,
              width: 70,
              child: CachedNetworkImage(
                  imageUrl:
                      "https://drive.google.com/uc?export=view&id=13iLSxSXbS7ONnKSdo4QiSvWI_kUhRPF6"),
            ),
            SizedBox(
              width: screenSize.width / 2.5,
            ),
            Row(
              children: [
                MouseRegion(
                  onEnter: (event) {
                    setState(() {
                      indicateColor[0] = Colors.white;
                    });
                  },
                  onExit: (event) {
                    setState(() {
                      indicateColor[0] = AppColors.blue;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: InkWell(
                      onTap: () {
                        Get.off(const Home());
                      },
                      child: Text(
                        'Home',
                        style: TextStyle(
                            color: indicateColor[0],
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                MouseRegion(
                  onEnter: (event) {
                    setState(() {
                      indicateColor[1] = Colors.white;
                    });
                  },
                  onExit: (event) {
                    setState(() {
                      indicateColor[1] = AppColors.blue;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: InkWell(
                      onTap: () {
                        Get.off(const AboutMe());
                      },
                      child: Text(
                        'About',
                        style: TextStyle(
                            color: indicateColor[1],
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                MouseRegion(
                  onEnter: (event) {
                    setState(() {
                      indicateColor[2] = Colors.white;
                    });
                  },
                  onExit: (event) {
                    setState(() {
                      indicateColor[2] = AppColors.blue;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: InkWell(
                      onTap: () {
                        Get.off(const Apps());
                      },
                      child: Text(
                        'Apps',
                        style: TextStyle(
                            color: indicateColor[2],
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
