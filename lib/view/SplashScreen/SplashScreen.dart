import 'dart:async';
import 'package:flutter/material.dart';
import 'package:instagram/utils/color_constant/color_constant.dart';
import 'package:instagram/view/NavigationScreen/NavigationScreen.dart';

class MySplash extends StatefulWidget {
  const MySplash({super.key});

  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => NavScreen()));
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.PrimaryWhite,
      body: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: 332, left: 84),
              child: Container(
                height: 56,
                width: 270,
                child: Image.asset("assets/images/insta_logo.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
