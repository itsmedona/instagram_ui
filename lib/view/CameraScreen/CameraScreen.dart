import 'package:flutter/material.dart';
import 'package:instagram/utils/color_constant/color_constant.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.bgcolor,
      body: SafeArea(
        child: Column(
        children: [
          Container(
          padding: EdgeInsetsDirectional.all(22),
          width: double.infinity,
          height: 570,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.close,
            color: ColorConstant.PrimaryWhite,
            size: 35,
          ),
            ],
          Icon(
            Icons.flash_off_outlined,
          color: ColorConstant.PrimaryWhite,
          size: 35,),
          Icon(
            Icons.settings,
          color: ColorConstant.PrimaryWhite,
          size: 35,
          ),
         ), ],
        ),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [CircleAvatar(
          radius: 38,
          backgroundColor: ColorConstant.PrimaryWhite,
          child: CircleAvatar(
            radius: 34,
            backgroundColor: ColorConstant.bgcolor,
            child: CircleAvatar(radius: 32,
            backgroundColor: ColorConstant.PrimaryWhite,
            ),
          ),
        )
        ],
        ),
      ),
      
      )
      ),
      SizedBox(height: 20,
      ),
      Padding(padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Container(
          height: 35,
          width:35,
          decoration: BoxDecoration(
            color: ColorConstant.PrimaryWhite,
            borderRadius: BorderRadius.circular(10)
          ),
          child:Row(
            children: [Text("Post",
            style: TextStyle(color: Colors.grey,
            fontWeight: FontWeight.w500,
            fontSize: 18),),
            SizedBox(
              width: 10,
            ),
            Text("Story",
            style: TextStyle(color: Colors.grey,
            fontWeight: FontWeight.w500,
            fontSize: 18),),
            SizedBox(
              width: 10,
            ),
            Text("Reels",
            style: TextStyle(color: Colors.grey,
            fontWeight: FontWeight.w500,
            fontSize: 18),),
            SizedBox(
              width: 10,
            ),
            ],
          ),
          Icon(Icons.restart_alt,
          color: ColorConstant.PrimaryWhite,
          size: 30,)
      ),
      ],
              ),

            );
  }
}
