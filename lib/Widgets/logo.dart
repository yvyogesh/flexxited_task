import 'package:flexxited/checkPlatform.dart';
import 'package:flutter/material.dart';

class LeadingIcon extends StatelessWidget {
  const LeadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          20, 20, checkPlatform() ? 10 : 0, checkPlatform() ? 10 : 0),
      child: SizedBox(
        height: 35.89,
        width: 35.87,
        child: Image.asset(
          "assets/Path 203@2x.png",
        ),
      ),
    );
  }
}