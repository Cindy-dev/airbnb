import 'package:airbnb/presentation/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../utils/app_strings.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.fromLTRB(30, deviceSize.height / 12, 30, 20),
      padding: const EdgeInsets.fromLTRB(20, 10, 14, 11),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36),
          border: Border.all(color: AppColors.shadowColor1),
          boxShadow: const [
            BoxShadow(color: AppColors.shadowColor1, spreadRadius: 3),
            BoxShadow(color: AppColors.shadowColor2),
          ]),
      child: FittedBox(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
                height: 20,
                width: 20,
                child: Image.asset(
                  "assets/images/icons/search.png",
                )),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 27),
              child: Column(
                children: [
                  const Text(
                    "Where to?",
                    style: TextStyle(
                        fontFamily: AppStrings.fontName,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  FittedBox(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "Anywhere",
                          style: TextStyle(
                              fontFamily: AppStrings.fontName,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Image.asset("assets/images/Ellipse6.png"),
                        ),
                        const Text(
                          "Any week",
                          style: TextStyle(
                              fontFamily: AppStrings.fontName,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Image.asset("assets/images/Ellipse6.png"),
                        ),
                        const Text(
                          "Add Guests",
                          style: TextStyle(
                              fontFamily: AppStrings.fontName,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                height: 30,
                width: 30,
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: AppColors.shadowColor1,
                          spreadRadius: 1,
                          blurStyle: BlurStyle.solid)
                    ],
                    color: AppColors.shadowColor2,
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.settingBorder)),
                child: Image.asset(
                  "assets/images/icons/setting-4.png",
                )),
          ],
        ),
      ),
    );
  }
}
