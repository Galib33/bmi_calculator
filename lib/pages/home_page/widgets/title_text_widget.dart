import 'package:flutter/material.dart';

import '../../../constants/app_text_style.dart';
import '../../../constants/app_titles.dart';

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      AppTitles.generalAppTitle,
      style: AppTextStyle.titleTextStyle,
    );
  }
}
