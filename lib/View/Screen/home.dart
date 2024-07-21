import 'package:flutter/material.dart';
import 'package:portfolio/Controller/responsive.dart';
import '../Responsive/homedesk.dart';
import '../Responsive/homemobile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return const HomeDesk();
    } else {
      (Responsive.isMobile(context));
    }
    return const HomeMobile();
  }
}
