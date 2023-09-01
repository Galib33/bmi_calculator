import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CheckContainerBox extends StatelessWidget {
  final Color checkBoxInsideColor;

  const CheckContainerBox({super.key, required this.checkBoxInsideColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: checkBoxInsideColor,
      ),
      child: const Icon(Icons.check, color: AppColors.whiteColor, size: 15),
    );
  }
}
