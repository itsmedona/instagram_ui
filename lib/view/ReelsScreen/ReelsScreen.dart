import 'package:flutter/material.dart';
import 'package:instagram/utils/color_constant/color_constant.dart';
import 'package:instagram/utils/image_constant/image_constant.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView.builder(
        itemCount: 6,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsetsDirectional.all(20),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Rectangle (6).png"),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "reels",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: ColorConstant.PrimaryWhite),
                      ),
                      Icon(Icons.expand_more_rounded,
                          size: 25, color: ColorConstant.PrimaryWhite),
                    ],
                  ),
                  Icon(
                    Icons.camera_alt_outlined,
                    size: 25,
                    color: ColorConstant.PrimaryWhite,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.favorite_border,
                    size: 25,
                    color: ColorConstant.PrimaryWhite,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "120K",
                    style: TextStyle(
                        fontSize: 10, color: ColorConstant.PrimaryWhite),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    ImageConstant.commentsButton,
                    height: 25,
                    width: 25,
                    color: ColorConstant.PrimaryWhite,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "11.1K",
                    style: TextStyle(
                        fontSize: 15, color: ColorConstant.PrimaryWhite),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    ImageConstant.shareButton,
                    height: 25,
                    width: 25,
                    color: ColorConstant.PrimaryWhite,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "user_id",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: ColorConstant.PrimaryWhite),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: EdgeInsetsDirectional.symmetric(
                                horizontal: 10, vertical: 6),
                            decoration: BoxDecoration(
                                border: BoxBorder.lerp(
                                    Border.all(),
                                    Border.all(
                                        color: ColorConstant.PrimaryWhite),
                                    5),
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              "Follow",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: ColorConstant.PrimaryWhite),
                            ),
                          )
                        ],
                      ),
                      Icon(
                        Icons.more_vert_outlined,
                        size: 25,
                        color: ColorConstant.PrimaryWhite,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "hgfjg gdiuytaegjh egdukeghmdgtf emuygdkgefkyuwda kaweukytdfjqwmg eamytkujhkzd judyteiuhbk mautwydkwauy",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: ColorConstant.PrimaryWhite),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 11, vertical: 3),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(60, 241, 237, 237),
                            borderRadius: BorderRadius.circular(28)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.music_note_rounded,
                              color: ColorConstant.PrimaryWhite,
                            ),
                            Text(
                              "music_no_1",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: ColorConstant.PrimaryWhite,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: ColorConstant.PrimaryWhite,
                            borderRadius: BorderRadiusDirectional.circular(6)),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
