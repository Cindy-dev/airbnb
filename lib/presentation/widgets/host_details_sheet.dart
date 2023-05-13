import 'dart:math';
import 'package:airbnb/presentation/utils/app_strings.dart';
import 'package:airbnb/presentation/widgets/host_card_text.dart';
import 'package:airbnb/presentation/widgets/host_description_text.dart';
import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

hostdetailsSheet(BuildContext context, String hostImg, String hostName,
    String years, AnimationController animation) {
  return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      context: context,
      builder: (context) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 11, bottom: 20),
              child: Image.asset("assets/images/rect.png"),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  GestureDetector(
                      onTap: () {
                        animation.reverse();
                        Navigator.pop(context);
                      },
                      child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 18),
                          child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(36),
                              ),
                              elevation: 4,
                              child: Container(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 0, 14, 0),
                                child: Row(children: [
                                  AnimatedBuilder(
                                    animation: animation,
                                    builder: (_, child) => Stack(
                                      children: [
                                        Transform.scale(
                                          scale: 1 + (animation.value * 0.5),
                                          alignment: Alignment.bottomLeft,
                                          child: Transform(
                                            transform: Matrix4(
                                              1,
                                              0,
                                              0,
                                              0,
                                              0,
                                              1,
                                              0,
                                              0,
                                              0,
                                              0,
                                              1,
                                              0,
                                              0,
                                              0,
                                              0,
                                              1,
                                            )..rotateY(
                                                160 + animation.value * pi),
                                            alignment: Alignment.bottomCenter,
                                            child: hostDet1(hostImg, hostName,
                                                context, animation),
                                          ),
                                        ),
                                        Transform.translate(
                                          offset: Offset(
                                              animation.value * (120 + 20 + 20),
                                              0),
                                          child: Container(
                                            alignment: Alignment.center,
                                            margin:
                                                const EdgeInsets.only(left: 20),
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                3,
                                            width: 3,
                                            color: AppColors.primaryColor,
                                          ),
                                        ),
                                        Transform.translate(
                                          offset: Offset(
                                              animation.value * (120 + 20 + 20),
                                              0),
                                          child: Transform.scale(
                                            alignment: Alignment.bottomLeft,
                                            scale: 1 + (animation.value * 0.5),
                                            child: hostDet2(context, years),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                              )))),
                  const SizedBox(height: 38),
                  const HostDescriptionText(
                      img: "assets/images/icons/Group.png",
                      det: "My Work: UX Designer"),
                  const HostDescriptionText(
                      img: "assets/images/icons/Vector.png",
                      det: "What makes my home unique : It’s fully automated"),
                  const HostDescriptionText(
                      img: "assets/images/icons/heart (1).png",
                      det: "I’m obsessed with: Technology"),
                  const HostDescriptionText(
                      img: "assets/images/icons/breakfast 1.png",
                      det: "What’s for breakfast: Oats and Fresh Fruit"),
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        );
      });
}

Container hostDet1(String hostImg, String hostName, BuildContext context,
    AnimationController animation) {
  return Container(
    width: MediaQuery.of(context).size.width / 3,
    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 8),
    padding: const EdgeInsets.fromLTRB(41, 30, 32, 41),
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Stack(
        children: [
          Image.asset(
            hostImg,
            fit: BoxFit.cover,
          ),
          Positioned(
              right: 0,
              bottom: 0,
              child: FittedBox(
                child: CircleAvatar(
                  backgroundColor: AppColors.accentColor,
                  radius: 9,
                  child: Image.asset(
                    "assets/images/shield.png",
                    scale: 2.5,
                  ),
                ),
              ))
        ],
      ),
      FittedBox(
          child: Padding(
        padding: const EdgeInsets.only(top: 6, bottom: 3),
        child: Text(
          hostName,
          style: const TextStyle(
            fontFamily: AppStrings.fontName,
            fontSize: 28,
            fontWeight: FontWeight.w700,
          ),
        ),
        //),
      )),
      FittedBox(
        child: Row(children: [
          Image.asset(
            "assets/images/medal.png",
            scale: 1.2,
          ),
          const SizedBox(
            width: 5,
          ),
          const Text(
            "Superhost",
            style: TextStyle(
              fontFamily: AppStrings.fontName,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ]),
      ) //),
    ]),
  );
}

Container hostDet2(BuildContext context, String hostYrs) {
  return Container(
    margin:
        EdgeInsets.only(top: MediaQuery.of(context).size.height / 7, left: 30),
    width: MediaQuery.of(context).size.width / 2.5,
    child: Column(
      children: [
        const HostCardText(
          figs: "17",
          title: "Reviews",
          color: Color(0xffF3F3F3),
        ),
        const HostCardText(
          figs: "4.89",
          title: "Rating",
          color: Color(0xffF3F3F3),
        ),
        HostCardText(
          figs: hostYrs,
          title: "Years Hosting",
          color: Colors.transparent,
        )
      ],
    ),
  );
}
