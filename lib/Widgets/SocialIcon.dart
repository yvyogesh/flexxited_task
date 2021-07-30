import 'package:flutter/material.dart';

import '../checkPlatform.dart';

class SocialIcon extends StatelessWidget {
  final String name;

  const SocialIcon({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double icon = checkPlatform() ? 12 : 20;
    return Padding(
      padding: EdgeInsets.only(
          left: checkPlatform() ? 10 : 20, top: checkPlatform() ? 3 : 0),
      child: SizedBox(
        height: icon,
        width: icon,
        child: Image.asset("assets/$name.png"),
      ),
    );
  }
}

