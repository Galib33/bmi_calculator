import 'package:bmi_calculator_homework/general_widgets/operation_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/app_colors.dart';

class ThirdlyContainer extends StatelessWidget {
  final int number;
  final Function() onTapMinus;
  final Function() onTapPlus;
  const ThirdlyContainer({super.key, required this.number, required this.onTapMinus, required this.onTapPlus});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: onTapMinus,
              child: const OperationContainer(iconData: FontAwesomeIcons.minus),
            ),
            //SizedBox(width: sizedBoxWidth,),
            Text(number.toString(),
                style: const TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            //SizedBox(width: sizedBoxWidth,),
            GestureDetector(
              onTap: onTapPlus,
              child: const OperationContainer(iconData: FontAwesomeIcons.plus),
            ),
          ],
        ),
      ),
    );
  }
}
