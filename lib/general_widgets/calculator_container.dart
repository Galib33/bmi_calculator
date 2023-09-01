import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_titles.dart';

class CalculateContainer extends StatelessWidget {
  final String calculateTitle;
  final Function() onTap;
  const CalculateContainer({super.key, required this.onTap, required this.calculateTitle});

  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: onTap,
      
      child: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: AppColors.calculateContainerGreenColor,
          borderRadius: BorderRadius.all(Radius.circular(13)),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10),
        child:  Text(
          calculateTitle,
          style: const TextStyle(color: AppColors.whiteColor, fontSize: 22),
        ),
      ),
    );
  }
}
