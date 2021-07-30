import 'package:flexxited/Views/view2.dart';
import 'package:flexxited/Widgets/logo.dart';
import 'package:flexxited/checkPlatform.dart';
import 'package:flutter/material.dart';

class View1 extends StatelessWidget {
  List<Widget> get trailingIcons {
    return [
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 30, 0),
        child: SizedBox(
            height: checkPlatform() ? 20 : 35,
            width: checkPlatform() ? 75 : 150,
            child: Image.asset("assets/Group 30@2x.png")),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 20, 0),
        child: SizedBox(
          height: checkPlatform() ? 18 : 27,
          width: checkPlatform() ? 21 : 31,
          child: Image.asset("assets/Menu@2x.png"),
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: LeadingIcon(),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: trailingIcons,
      ),
      body: InkWell(
        onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => View2()));
            },
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                checkPlatform()
                    ? "assets/sebastian.png"
                    : "assets/sebastian-svenson-d2w-_1LJioQ-unsplash@2x.png",
                fit: BoxFit.cover,
              ),
            ),
            checkPlatform() ? ContentMobile() : ContentWeb(),
          ],
        ),
      ),
    );
  }
}

class ContentWeb extends StatelessWidget {
  final List<String> _lst = [
    "VERIFICATION MADE EASY",
    "DOMINEUM CREDENTIAL VERIFICATION SYSTEM IS A 3 SIDED MARKETPLACE DESIGNED TO BRIDGE THE ONLINE AND OFFLINE WORLDS FOR SHARING VERIFIABLE DOCUMENTS AND CREDENTIALS BETWEEN ISSUING INSTITUTIONS, BUSINESSES/INDIVIDUALS AND 3RD PARTY VERIFIERS.",
  ];

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 169,
            width: 500,
            child: Text(
              _lst[0],
              style: TextStyle(
                color: Colors.white,
                fontSize: 60,
              ),
            ),
          ),
          SizedBox(
            width: 500,
            child: Text(
              _lst[1],
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),

          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => View2()));
            },
            child: SizedBox(
              height: 50,
              child: Image.asset(
                "assets/Group 10@2x.png",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Column(
        children: [
          Spacer(),
          Text(
            "EXCEPTEUR SINT OCCAECAT",
            textAlign: TextAlign.center,
            style: TextStyle(
                letterSpacing: 3.6, fontSize: 30, color: Color(0xffffffff)),
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => View2()));
            },
            child: SizedBox(
              height: 50,
              child: Image.asset(
                "assets/Group 10@2x.png",
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
