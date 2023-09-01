import 'package:bmi_calculator_homework/constants/app_sized_boxes.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_text_style.dart';
import '../../../constants/app_titles.dart';
import '../../../general_widgets/thirdly_container.dart';

class AgeColumn extends StatefulWidget {
  const AgeColumn({super.key});

  @override
  State<AgeColumn> createState() => _AgeColumnState();
}

class _AgeColumnState extends State<AgeColumn> {
  int ageNumber = 29;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppTitles.stringAge,
          style: AppTextStyle.columnTitleTextStyle,
        ),
        AppSizedBox.sizedBoxH8,
        ThirdlyContainer(
          number: ageNumber,
          onTapMinus: () {
            if (ageNumber > 1) {
              ageNumber--;
              setState(() {});
            }
          },
          onTapPlus: () {
            if (ageNumber < 100) {
              ageNumber++;
              setState(() {});
            }
          },
        ),
      ],
    );
  }
}
