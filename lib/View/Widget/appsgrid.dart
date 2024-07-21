import 'package:flutter/material.dart';
import 'package:portfolio/Controller/responsive.dart';
import 'package:portfolio/View/Widget/appbox.dart';

class AppsGrid extends StatelessWidget {
  const AppsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isDesktop(context) ? 60 : 10),
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: Responsive.isDesktop(context) ? 2 : 1,
          mainAxisSpacing: Responsive.isDesktop(context) ? 20 : 10,
          crossAxisSpacing: Responsive.isDesktop(context) ? 10 : 0,
          childAspectRatio: Responsive.isDesktop(context) ? 1.8 : 1.8),
      children: const [
        // Threads
        AppBox(
            'https://drive.google.com/uc?export=view&id=18aD4C9wDYZYfmKEJ20sUlCpbHYHAU5CJ',
            ''),
        // Store
        AppBox(
            'https://drive.google.com/uc?export=view&id=1zfg-z9YcTzsukJdu-2wxW9I4XyKARdzG',
            ''),
        // Dentist
        AppBox(
            'https://drive.google.com/uc?export=view&id=1AaGCqhshEW3Tg5Jmi9ZAJ6HZ86L9Mq6v',
            ''),
        // Food Order
        AppBox(
            'https://drive.google.com/uc?export=view&id=1UHOG0JTs7VmfcrAzUnr6VYfjS211KwFO',
            ''),
        // TimeBox
        AppBox(
            'https://drive.google.com/uc?export=view&id=1X13x-QKWIRYuVStfCZYyxOU19PY21bzQ',
            ''),
        // ToDayDo
        AppBox(
            'https://drive.google.com/uc?export=view&id=1E8j3v1fqgo4t46jNNCE377EFjtREgC62',
            ''),
      ],
    );
  }
}
