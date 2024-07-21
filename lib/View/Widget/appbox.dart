import 'package:flutter/material.dart';
import 'package:portfolio/Controller/responsive.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:sizer/sizer.dart';

class AppBox extends StatefulWidget {
  final String appPath;
  final String url;
  const AppBox(this.appPath, this.url);

  @override
  State<AppBox> createState() => _AppBoxState(url);
}

class _AppBoxState extends State<AppBox> {
  double? width;
  double? height;
  Color? color;
  bool? animate;
  bool? textAppear;

  final String url;

  _AppBoxState(this.url);
  Future launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication))
      throw 'can not launch url';
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchURL(url);
      },
      child: Container(
        height: 30.h,
        width: 100.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              strokeAlign: BorderSide.strokeAlignInside,
              width: 1.5,
              color: Colors.black,
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade800, spreadRadius: 1, blurRadius: 5)
            ]),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
                fit: BoxFit.cover, imageUrl: widget.appPath)),
      ),
    );
  }
}
