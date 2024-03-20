import 'package:flutter/material.dart';

import 'package:instagram/view/HomeScreen/HomeScreen.dart';
import 'package:instagram/view/PostCard/PostCard.dart';

import 'package:instagram/view/ProfileScreen/ProfileScreen.dart';
import 'package:instagram/view/ReelsScreen/ReelsScreen.dart';
import 'package:instagram/view/SearchScreen/SearchScreen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int selectedIndex = 0;
  List<Widget> MyWidgetList = [
    HomeScreen(),
    SearchScreen(),
    ReelsScreen(),
    //Post(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyWidgetList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 70, 64, 64),
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
    );
  }
}
