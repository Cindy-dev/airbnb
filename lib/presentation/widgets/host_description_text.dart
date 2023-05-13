import 'package:airbnb/presentation/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../utils/app_strings.dart';

class HostDescriptionText extends StatelessWidget {
  final String img;
  final String det;
  const HostDescriptionText({super.key, required this.img, required this.det});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(28, 0, 28, 18),
      child: Row(
        children: [
          Image.asset(
            img,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Text(
              det,
              style: const TextStyle(
                color: AppColors.cardText,
                fontFamily: AppStrings.fontName,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
