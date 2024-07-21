import 'package:flutter/material.dart';
import 'package:portfolio/Controller/responsive.dart';
import 'package:portfolio/View/Responsive/aboutmedesk.dart';
import 'package:portfolio/View/Responsive/aboutmemobile.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return const AboutMeDesk();
    } else {
      (Responsive.isMobile(context));
    }
    return const AboutMeMobile();
  }
}
