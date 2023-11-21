import 'package:flutter/material.dart';
import 'package:instagram/utils/color_constant/color_constant.dart';

class Users extends StatelessWidget {
  const Users({super.key, required this.profilePic, required this.name});
  final String profilePic;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.amber,
              image: DecorationImage(image: AssetImage(profilePic))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: ColorConstant.PrimaryWhite,
                    child: const CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.green,
                    ),
                  )
                ],
              ),

          

          ),
          Text(name)
        ],
      ),
    );
  }
}
