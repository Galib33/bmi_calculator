import 'package:bmi_calculator_homework/general_widgets/gender_container.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_borders.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_sized_boxes.dart';
import '../../../constants/app_text_style.dart';
import '../../../constants/app_titles.dart';

class GenderColumn extends StatefulWidget {
  const GenderColumn({
    super.key,
  });

  @override
  State<GenderColumn> createState() => _GenderColumnState();
}

class _GenderColumnState extends State<GenderColumn> {
  Color checkBoxMale = AppColors.genderContainerGreyColor;
  Color checkBoxFemale = AppColors.genderContainerGreyColor;
  Border normalMaleBorder =
      Border.all(color: AppColors.genderContainerGreyColor);
  Border normalFemaleBorder =
      Border.all(color: AppColors.genderContainerGreyColor);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppTitles.genderText,
          style: AppTextStyle.columnTitleTextStyle,
        ),
        AppSizedBox.sizedBoxH8,
        Row(
          children: [
            GenderContainer(
              genderName: AppTitles.genderMale,
              iconData: Icons.man,
              checkBoxInsideColor: checkBoxMale,
              genderBorder: normalMaleBorder,
              onTap: onTapMale,
            ),
            AppSizedBox.sizedBoxW15,
            GenderContainer(
              genderName: AppTitles.genderFemale,
              iconData: Icons.woman,
              checkBoxInsideColor: checkBoxFemale,
              genderBorder: normalFemaleBorder,
              onTap: onTapFemale,
            ),
          ],
        )
      ],
    );
  }

  void onTapFemale() {
    if (normalFemaleBorder != AppBorders.genderContainerBorderStyle) {
      checkBoxFemale = AppColors.calculateContainerGreenColor;
      checkBoxMale = AppColors.genderContainerGreyColor;
      normalFemaleBorder = AppBorders.genderContainerBorderStyle;
      normalMaleBorder = Border.all(color: AppColors.genderContainerGreyColor);
      setState(() {});
    }
  }

  void onTapMale() {
    if (normalMaleBorder != AppBorders.genderContainerBorderStyle) {
      normalMaleBorder = AppBorders.genderContainerBorderStyle;
      checkBoxMale = AppColors.calculateContainerGreenColor;
      checkBoxFemale = AppColors.genderContainerGreyColor;
      normalFemaleBorder =
          Border.all(color: AppColors.genderContainerGreyColor);
      setState(() {});
    }
  }
}
