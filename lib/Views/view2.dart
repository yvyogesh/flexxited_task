import 'package:flexxited/Views/view3.dart';
import 'package:flexxited/Widgets/getAppLinkIcon.dart';
import 'package:flexxited/checkPlatform.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class View2 extends StatelessWidget {
  List<Widget> get contents {
    return [
      if (checkPlatform())
        SizedBox(
          height: 50,
        ),
      Expanded(
        flex: 3,
        child: Image.asset("assets/mockup 1.png"),
      ),
      Expanded(
        flex: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Download the App Now!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                letterSpacing: 1,
              ),
            ),
            Padding(
              padding: checkPlatform()
                  ? EdgeInsets.only(top: 20)
                  : EdgeInsets.only(left: 20, top: 30),
              child: Wrap(
                children: [
                  if (checkPlatform())
                    SizedBox(
                      height: 10,
                      width: 50,
                    ),
                  LinkIcon(icon: "playstore", bck: "Group 24"),
                  LinkIcon(icon: "app-store", bck: "Group 25"),
                ],
              ),
            )
          ],
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        flexibleSpace: Image.asset(
          "assets/sebastian-svenson-d2w-_1LJioQ-unsplash.png",
          alignment: Alignment.topCenter,
          fit: BoxFit.cover,
          width: double.infinity,
        ),
      ),
      body: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => View3()));
        },
        child: checkPlatform()
            ? Column(
                children: contents,
              )
            : ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: contents,
                  ),
                ],
              ),
      ),
    );
  }
}
