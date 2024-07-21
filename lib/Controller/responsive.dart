import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive(
      {required this.desktop,
      this.tablet,
      this.mobileLarge,
      required this.mobile});

  final Widget desktop;
  final Widget? tablet;
  final Widget? mobileLarge;
  final Widget mobile;

  static isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1024;
  }

  static isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width < 1024;
  }

  static isMobileLarge(BuildContext context) {
    return MediaQuery.of(context).size.width <= 700;
  }

  static isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= 500;
  }

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    if (_size.width >= 1024) {
      return desktop;
    } else if (_size.width >= 700 && tablet != null) {
      return tablet!;
    } else if (_size.width >= 450 && mobileLarge != null) {
      return mobileLarge!;
    } else {
      return mobile;
    }
  }
}
