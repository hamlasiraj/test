import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class LeftAbout extends StatelessWidget {
  const LeftAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 400,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            strokeAlign: BorderSide.strokeAlignInside,
            width: 1.5,
            color: Colors.black,
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade800, spreadRadius: 1, blurRadius: 10)
          ]),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CachedNetworkImage(
              imageUrl:
                  "https://drive.google.com/uc?export=view&id=15yiB7RyvL36nwG0EE40karXcXq9Gpyru",
              fit: BoxFit.cover)),
    );
  }
}
