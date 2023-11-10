import 'package:flutter/material.dart';
import 'package:instagram/utils/color_constant/color_constant.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.bgcolor,
      ),
      /*body: PageView(
          Container(
            color: Colors.blue,
            child: Center(
              child: Text('Page 1'),
            ),
          ),
          Container(
            color: Colors.green,
            child: Center(
              child: Text('Page 2'),
            ),
          ),
          Container(
            color: Colors.orange,
            child: Center(
              child: Text('Page 3'),
            ),
          ),*/
    );
  }
}
