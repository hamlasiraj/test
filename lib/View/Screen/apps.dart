import 'package:flutter/material.dart';
import 'package:portfolio/Controller/responsive.dart';
import 'package:portfolio/View/Responsive/appsdesk.dart';
import 'package:portfolio/View/Responsive/appsmobile.dart';

class Apps extends StatelessWidget {
  const Apps({super.key});

  @override
  Widget build(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return const AppsDesk();
    } else {
      (Responsive.isMobile(context));
    }
    return const AppsMobile();
  }
}
