import 'package:flutter/material.dart';

import '../checkPlatform.dart';

class LinkIcon extends StatelessWidget {
  final String icon, bck;
  const LinkIcon({Key? key, required this.icon, required this.bck})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double iconheightWidth = checkPlatform() ? 15 : 20;
    return SizedBox(
      height: checkPlatform() ? 40 : 55,
      width: 180,
      child: Stack(
        fit: StackFit.loose,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: checkPlatform() ? 10 : 15,
                top: checkPlatform() ? 10 : 15),
            child: Image.asset(
              "assets/$icon.png",
              height: iconheightWidth,
              width: iconheightWidth,
            ),
          ),
          Image.asset(
            "assets/$bck.png",
          ),
        ],
      ),
    );
  }
}
