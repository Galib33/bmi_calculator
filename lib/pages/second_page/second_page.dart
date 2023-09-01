import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../../constants/app_texts.dart';
import '../../constants/app_titles.dart';
import '../../general_widgets/calculator_container.dart';
import 'result_container.dart';

class SecondPage extends StatelessWidget {
  final String bmiResult;

  final String iconString;

  const SecondPage(
      {super.key, required this.bmiResult, required this.iconString});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RESULT"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              ResultContainer(
                  iconString: iconString,
                  bmiResult: bmiResult,
                  description: AppTexts.description),
              const Spacer(),
              CalculateContainer(
                calculateTitle: AppTitles.stringReCalculate,
                onTap: () {
                  AudioPlayer().play(AssetSource("audios/click2.mp3"));
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
