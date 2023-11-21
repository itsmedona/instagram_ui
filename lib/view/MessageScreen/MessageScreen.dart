import 'package:flutter/material.dart';
import 'package:instagram/database/database.dart';
import 'package:instagram/utils/color_constant/color_constant.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.PrimaryWhite,
      appBar: AppBar(
        backgroundColor: ColorConstant.PrimaryWhite,
        elevation: 0,
        iconTheme: IconThemeData(
          color: ColorConstant.bgcolor
        ),
        title: Row(
          children: [
            Text(Database.ProDetails["user_id"],
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: ColorConstant.bgcolor
            ),
            ),
            Icon(Icons.expand_more_rounded,
            size: 30,
            color: ColorConstant.bgcolor,
            )
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.more_horiz)),
          IconButton(onPressed: (){}, icon:Icon(Icons.auto_graph_outlined)),
          IconButton(onPressed: (){}, icon:Icon(Icons.edit_square)),
        ],
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [const SizedBox(
            height: 30,
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 9,
                ),
                decoration: BoxDecoration(
                  color:Colors.grey[300],
                  borderRadius: BorderRadius.circular(16)),
                  width:350,
                  child: Row(
                    children: [Icon(Icons.search,color: Colors.grey[800]),
                    const SizedBox(
                      width: 15,
                    ),
                    Text("Search",style: TextStyle(color: Colors.grey[800]),
                    )
                    ],
                  ),
                ),
                TextButton(onPressed: (){}, child: Text("Filter"))
            ],
          ),
          ),
          const SizedBox(
            height: 25,
            ),
            /*SingleChildScrollView(
              scrollDirection:Axis.horizontal,
              child: Row(
                children: List.generate(
                  Database.userInfo.length,
                  (index)=>
              ),)*/
          ],
        ),
      )
    );
  }
}