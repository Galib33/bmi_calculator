import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class SplashImageContainer extends StatelessWidget {
  const SplashImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.yellowColor,
        image: DecorationImage(
            image: AssetImage("assets/icons/dogBmi.gif"), fit: BoxFit.cover),
      ),
    );
  }
}
