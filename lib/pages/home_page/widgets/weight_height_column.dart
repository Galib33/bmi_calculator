import 'package:bmi_calculator_homework/general_widgets/drop_down_container.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_sized_boxes.dart';
import '../../../constants/app_text_style.dart';
import '../../../general_widgets/thirdly_container.dart';

class WeightHeightColumn extends StatelessWidget {
  final String columnTitle;
  final int number;
  final double? sizedBoxWidth;
  final String? dropValue;
  final List<String> listKg;
  final Function(String?) onChanged;

  final Function() onTapMinus;
  final Function() onTapPlus;

  const WeightHeightColumn({
    super.key,
    required this.columnTitle,
    required this.number,
    this.sizedBoxWidth = 40,
    required this.onTapMinus,
    required this.onTapPlus, required this.dropValue, required this.listKg, required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          columnTitle,
          style: AppTextStyle.columnTitleTextStyle,
        ),
        AppSizedBox.sizedBoxH8,
        Row(
          children: [
            Expanded(
                child: ThirdlyContainer(
              number: number,
              onTapMinus: onTapMinus,
              onTapPlus: onTapPlus,
            )),
            AppSizedBox.sizedBoxW15,
            DropDownContainer(dropValue: dropValue,listKg: listKg,onChanged: onChanged,)
          ],
        )
      ],
    );
  }
}
