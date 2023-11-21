import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key, required this.title, required this.profilePics});
  final String title;
  final String profilePics;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15, vertical: 5
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage(profilePics),
          ),
          SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              Row(
                children: [
                  Text("subTitle"),
                  Padding(padding: const EdgeInsets.all(5),
                  child: Text("."),
                  ),
                  Text("44 m")
                ],
              )
            ],
          ),
          Icon(Icons.camera_alt_outlined)
        ],
      ),
    );
  }
}
