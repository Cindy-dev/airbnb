import 'package:flutter/material.dart';
import '../utils/app_strings.dart';

class HostCardText extends StatelessWidget {
  final String figs;
  final String title;
  final Color color;
  const HostCardText(
      {super.key,
      required this.figs,
      required this.title,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            figs,
            style: const TextStyle(
              fontFamily: AppStrings.fontName,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        FittedBox(
          child: Text(
            title,
            style: const TextStyle(
              fontFamily: AppStrings.fontName,
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Divider(thickness: 1, color: color,
     endIndent: 3,
        ),
      ],
    );
  }
}
