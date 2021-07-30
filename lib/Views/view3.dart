import 'package:flexxited/Constnats/constant.dart';
import 'package:flexxited/Views/view1.dart';
import 'package:flexxited/Widgets/SocialIcon.dart';
import 'package:flexxited/checkPlatform.dart';
import 'package:flutter/material.dart';

class View3 extends StatelessWidget {
  final List<String> _lst = [
    "HOME",
    "VERIFY",
    "DOWNLOAD THE APP",
    "CONTECT",
  ];
  List<Widget> get soicalIconLayout {
    return [
      SocialIcon(name: "instagram"),
      SocialIcon(name: "facebook"),
      SocialIcon(name: "twitter"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        
        onTap: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => View1()),
              (route) => false);
        },
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                "assets/javier-miranda-xB2XP29gn10-unsplash.png",
                fit: checkPlatform() ? BoxFit.fitHeight : BoxFit.cover,
                alignment: Alignment.topLeft,
              ),
            ),
            Align(alignment: Alignment.centerRight, child: Fields()),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        alignment: Alignment.center,
        height: 50,
        width: double.infinity,
        color: Color(0xff2c2c2c),
        child: Row(
          children: bottomContaint(context),
        ),
      ),
    );
  }

  List<Widget> bottomContaint(BuildContext context) {
    return [
      checkPlatform()
          ? Column(
              children: soicalIconLayout,
            )
          : Row(
              children: soicalIconLayout,
            ),
      Spacer(),
      ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: _lst.length,
          itemBuilder: (context, i) => Padding(
                padding:
                    EdgeInsets.only(top: 20, left: checkPlatform() ? 15 : 50),
                child: Text(
                  _lst[i],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: checkPlatform() ? 10 : 16,
                  ),
                ),
              )),
      Spacer(),
      InkWell(
        onTap: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => View1()),
              (route) => false);
        },
        child: Container(
          color: Colors.white,
          height: 50,
          width: 60,
          child: Icon(
            Icons.arrow_upward,
            color: Color(0xff2c2c2c),
          ),
          // child: Image.asset("assets/.png"),
        ),
      )
    ];
  }
}

class Fields extends StatelessWidget {
  const Fields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: Container(
        margin: EdgeInsets.fromLTRB(50, 10, checkPlatform() ? 50 : 100, 80),
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (checkPlatform())
              SizedBox(
                height: 30,
              ),
            Text(
              "Contact Us",
              style: TextStyle(
                  color: Color(0xff2c2c2c).withOpacity(1),
                  fontSize: 30,
                  letterSpacing: 0.75),
            ),
            Text(
              "Drop us a message",
              style: TextStyle(
                  color: Color(0xff2c2c2c).withOpacity(1),
                  fontSize: 17,
                  letterSpacing: 0.6),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(decoration: decoration.copyWith(labelText: "Name")),
            TextField(decoration: decoration.copyWith(labelText: "Email")),
            TextField(
              decoration: decoration.copyWith(
                labelText: "Message",
              ),
              maxLines: 4,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    width: 2,
                    color: Colors.grey.shade700,
                  )),
              child: Text(
                "Send",
                style: TextStyle(
                  color: Color(0xff2c2c2c).withOpacity(1),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
