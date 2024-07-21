import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class IconRow extends StatelessWidget {
  Future _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'can not launch url';
    }
  }

  const IconRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      IconButton(
          onPressed: () {
            _launchURL("https://www.instagram.com/siraj4reall");
          },
          icon: const FaIcon(color: Colors.white, FontAwesomeIcons.instagram)),
      IconButton(
          onPressed: () {
            _launchURL("https://github.com/hamlasiraj");
          },
          icon: const FaIcon(color: Colors.white, FontAwesomeIcons.github)),
      IconButton(
          onPressed: () {
            _launchURL(
                "https://www.linkedin.com/in/siraj-eddine-hamla-5b4774268");
          },
          icon: const FaIcon(color: Colors.white, FontAwesomeIcons.linkedinIn)),
    ]);
  }
}
