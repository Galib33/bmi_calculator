import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_sized_boxes.dart';

class ResultContainer extends StatelessWidget {
  final String iconString;
  final String bmiResult;
  final String description;

  const ResultContainer(
      {super.key,
      required this.iconString,
      required this.bmiResult,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width / 1.3,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(width: 2, color: AppColors.whiteColor),
          borderRadius: const BorderRadius.all(Radius.circular(13)),
        ),
        child: Column(
          children: [
            Image.asset(
              iconString,
              cacheWidth: 200,
              cacheHeight: 200,
            ),
            AppSizedBox.sizedBoxH20,
            Text(
              bmiResult,
              style: const TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            AppSizedBox.sizedBoxH20,
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.cyanAccent
                
              ),
              child: Text(
                description,
                
                style: const TextStyle(fontSize: 20,color: Colors.black),
                textAlign: TextAlign.center,
                
            
              ),
            )
          ],
        ));
  }
}
