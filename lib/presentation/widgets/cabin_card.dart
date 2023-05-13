import 'package:airbnb/data/repository/cabin_list.dart';
import 'package:airbnb/presentation/utils/app_colors.dart';
import 'package:airbnb/presentation/utils/app_strings.dart';
import 'package:airbnb/presentation/widgets/cabin_img_stack.dart';
import 'package:flutter/material.dart';

class CabinCard extends StatefulWidget {
  const CabinCard({super.key});

  @override
  State<CabinCard> createState() => _CabinCardState();
}

class _CabinCardState extends State<CabinCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: cabinList.length,
          itemBuilder: (context, i) {
            final item = cabinList[i];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 31),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CabinImageStack(
                    cabinImg: item.cabinImage!,
                    hostImg: item.hostImage!,
                    hostName: item.hostName!,
                    years: item.hostYears!.toString(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 19, bottom: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Groveland, California",
                          style: TextStyle(
                              fontFamily: AppStrings.fontName,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(Icons.star),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "4.91",
                              style: TextStyle(
                                  fontFamily: AppStrings.fontName,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  FittedBox(
                    child: RichText(
                        text: TextSpan(
                            text: "Stay with ${item.hostName}",
                            style: const TextStyle(
                                fontFamily: AppStrings.fontName,
                                fontSize: 17,
                                color: AppColors.cardText,
                                fontWeight: FontWeight.w400),
                            children: [
                          const TextSpan(text: " •  "),
                          TextSpan(text: "Hosting For ${item.hostYears} years")
                        ])),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    "Oct 23 - 28",
                    style: TextStyle(
                        color: AppColors.cardText,
                        fontFamily: AppStrings.fontName,
                        fontSize: 17,
                        fontWeight: FontWeight.w400),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4, bottom: 42),
                    child: RichText(
                        text: TextSpan(
                            text: "\$${item.amount}",
                            style: const TextStyle(
                                fontFamily: AppStrings.fontName,
                                fontSize: 17,
                                color: AppColors.black,
                                fontWeight: FontWeight.w500),
                            children: const [
                          TextSpan(
                            text: " night",
                            style: TextStyle(
                                fontFamily: AppStrings.fontName,
                                fontSize: 17,
                                color: AppColors.cardText,
                                fontWeight: FontWeight.w400),
                          ),
                        ])),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
