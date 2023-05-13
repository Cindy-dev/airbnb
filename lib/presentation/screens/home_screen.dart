import 'package:airbnb/presentation/utils/app_colors.dart';
import 'package:airbnb/presentation/utils/app_strings.dart';
import 'package:airbnb/presentation/widgets/cabin_card.dart';
import 'package:flutter/material.dart';
import '../widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Card(
                margin: EdgeInsets.zero,
                shadowColor: const Color(0xffC5C5C5),
                child: Column(
                  children: [
                    const SearchBar(),
                    DefaultTabController(
                      length: 5,
                      child: TabBar(
                        labelPadding: const EdgeInsets.only(left: 28),
                        indicatorPadding: const EdgeInsets.only(left: 25),
                        isScrollable: true,
                        labelStyle: const TextStyle(
                            fontFamily: AppStrings.fontName, fontSize: 12),
                        labelColor: AppColors.black,
                        padding: const EdgeInsets.only(left: 5, bottom: 0),
                        indicatorColor: AppColors.black,
                        tabs: [
                          Tab(
                            icon: Image.asset(
                              "assets/images/icons/image 2.png",
                              scale: 2,
                            ),
                            text: "Cabins",
                          ),
                          Tab(
                            icon: Image.asset(
                              "assets/images/icons/image 2 (1).png",
                              scale: 2,
                            ),
                            text: "Lakefront",
                          ),
                          Tab(
                            icon: Image.asset(
                              "assets/images/icons/image 2 (2).png",
                              scale: 2,
                            ),
                            text: "A-frames",
                          ),
                          Tab(
                            icon: Image.asset(
                              "assets/images/icons/image 2 (3).png",
                              scale: 2,
                            ),
                            text: "Tiny homes",
                          ),
                          Tab(
                            icon: Image.asset(
                              "assets/images/icons/image 2 (4).png",
                              scale: 2,
                            ),
                            text: "National parks",
                          ),
                        ],
                      ),
                    )
                  ],
                )),
            const CabinCard(),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
