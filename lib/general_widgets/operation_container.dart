import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/app_colors.dart';

class OperationContainer extends StatelessWidget {
  final IconData iconData;

  const OperationContainer({ super.key, required this.iconData });

   @override
   Widget build(BuildContext context) {
       return Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: AppColors.blackColor,
                  shape: BoxShape.circle,
                ),
                child:  FaIcon(
                  iconData,
                  color: AppColors.whiteColor,
                  size: 12.5,
                ),
              );
  }
}