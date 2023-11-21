import 'package:flutter/material.dart';
import 'package:instagram/utils/color_constant/color_constant.dart';
import 'package:instagram/view/SearchScreen/SearchScreen_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.search,
        title: Container(
          child: Row(
            children: [
              Icon(Icons.search),
              SizedBox(width: 10),
              Text("Search"),
            ],
          ),
        ),
      ),
      body: Container(
        child: SearchScreenMedia(),
      ),
    );
  }
}
