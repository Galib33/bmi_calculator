import 'package:bmi_calculator_homework/general_widgets/check_container_box.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/app_colors.dart';
import '../constants/app_sized_boxes.dart';

class GenderContainer extends StatelessWidget {
  final String genderName;
  final IconData iconData;
  final Function() onTap;
  final Border genderBorder;
  final Color checkBoxInsideColor;

  const GenderContainer(
      {super.key,
      required this.genderName,
      required this.iconData,
      required this.onTap,
      required this.genderBorder,
      required this.checkBoxInsideColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.genderContainerGreyColor,
            borderRadius: const BorderRadius.all(Radius.circular(13)),
            border: genderBorder,
          ),
          child: Stack(children: [
            Positioned(
              top: 8,
              right: 8,
              child:
                  CheckContainerBox(checkBoxInsideColor: checkBoxInsideColor),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Center(
                child: Column(
                  children: [
                    Icon(
                      iconData,
                      size: 100,
                      color: AppColors.whiteColor,
                    ),
                    AppSizedBox.sizedBoxH10,
                    Text(
                      genderName,
                      style: const TextStyle(
                          fontSize: 17.5, color: AppColors.whiteColor),
                    )
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
  /*  CheckboxTheme(
              data: const CheckboxThemeData(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
              child: Checkbox(
                  checkColor: AppColors.textGreyColor,
                  fillColor:
                      const MaterialStatePropertyAll(AppColors.checkBoxInsideColor),
                  value: isTapped,
                  onChanged: null),
            ), */
}
