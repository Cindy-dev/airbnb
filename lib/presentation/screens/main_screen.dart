import 'package:airbnb/presentation/screens/home_screen.dart';
import 'package:airbnb/presentation/utils/app_strings.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Color select(int index) {
    if (_selectedIndex == index) {
      return AppColors.primaryColor;
    } else {
      return AppColors.tabGray;
    }
  }

  FontWeight labelWeight(int index) {
    if (_selectedIndex == index) {
      return FontWeight.w600;
    } else {
      return FontWeight.w400;
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  int _selectedIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    final deviceW = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(children: [
          PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            children: const [
              HomeScreen(),
            ],
          ),
          Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                  alignment: Alignment.center,
                  padding:
                      EdgeInsets.fromLTRB(deviceW / 50, 10, deviceW / 50, 0),
                  width: deviceW,
                  color: Colors.white,
                  child: Image.asset("assets/images/tab.png")))
        ]));
  }
}
