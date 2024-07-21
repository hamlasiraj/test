import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Bitmoji extends StatefulWidget {
  const Bitmoji({super.key});

  @override
  State<Bitmoji> createState() => _BitmojiState();
}

class _BitmojiState extends State<Bitmoji> {
  double height = 350;
  double width = 350;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          height = 360;
          width = 360;
        });
      },
      onExit: (event) {
        setState(() {
          height = 350;
          width = 350;
        });
      },
      child: AnimatedContainer(
        height: height,
        width: width,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
            image: const DecorationImage(
                fit: BoxFit.cover,
                image: CachedNetworkImageProvider(
                    'https://drive.google.com/uc?export=view&id=1ZAysLh9Ul8ZERW34ukzDjzbcwN7O1hoK')),
            color: Colors.grey[850],
            borderRadius: BorderRadius.circular(300),
            border: Border.all(
              strokeAlign: BorderSide.strokeAlignInside,
              width: 1.5,
              color: Colors.black,
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade800, spreadRadius: 1, blurRadius: 10)
            ]),
      ),
    );
  }
}
