import 'package:flutter/material.dart';
import 'package:instagram/utils/color_constant/color_constant.dart';
import 'package:instagram/utils/image_constant/image_constant.dart';

import '../PostCard/PostCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.favorite_border,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
          Center(
            child: Stack(
              children: [
                Positioned(
                  child: Icon(
                    Icons.message_rounded,
                    color: Colors.black,
                  ),
                ),
                Positioned(
                  right: 4,
                  top: 0,
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.red,
                    child: Center(child: Text("1")),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
        title: Text("Instagram"),
        backgroundColor: ColorConstant.secondary,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(InstImages.Home[0]),
                      radius: 40,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(InstImages.Home[1]),
                      radius: 40,
                      backgroundColor: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(InstImages.Home[5]),
                      radius: 40,
                      backgroundColor: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(InstImages.Home[3]),
                      radius: 40,
                      backgroundColor: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(InstImages.Home[4]),
                      radius: 40,
                      backgroundColor: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(InstImages.Home[6]),
                      radius: 40,
                      backgroundColor: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(InstImages.Home[7]),
                      radius: 40,
                      backgroundColor: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(InstImages.Home[8]),
                      radius: 40,
                      backgroundColor: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 220,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Post(index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
