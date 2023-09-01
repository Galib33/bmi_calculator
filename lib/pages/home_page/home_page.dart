import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/app_sized_boxes.dart';
import '../../constants/app_titles.dart';
import '../../general_widgets/calculator_container.dart';
import 'app_bar_widget.dart';
import 'widgets/age_column.dart';
import '../../constants/app_bar.dart';
import 'widgets/gender_column.dart';
import 'widgets/title_text_widget.dart';
import 'widgets/weight_height_column.dart';
import '../second_page/second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? dropValueWeight;
  String? dropValueHeight;
  double result = 0;

  List<String> dropListWeight = ["kg", "lbs"];
  List<String> dropListHeight = ["cm", "ft"];

  String pngIcon = "assets/icons/cancel.png";

  String? allBmiResult;
  String? description;

  int weightNumber = 56;
  int heightNumber = 162;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSizedBox.sizedBoxMainColumn,
              const TitleTextWidget(),
              AppSizedBox.sizedBoxMainColumn,
              const GenderColumn(),
              AppSizedBox.sizedBoxMainColumn,
              WeightHeightColumn(
                columnTitle: AppTitles.stringWeight,
                number: weightNumber,
                listKg: dropListWeight,
                dropValue: dropValueWeight,
                onChanged: (value) {
                  setState(() {
                    dropValueWeight = value!;
                  });
                },
                onTapMinus: onTapMinusWeight,
                onTapPlus: onTapPlusWeight,
              ),
              AppSizedBox.sizedBoxMainColumn,
              WeightHeightColumn(
                columnTitle: AppTitles.stringHeight,
                number: heightNumber,
                sizedBoxWidth: 33,
                listKg: dropListHeight,
                dropValue: dropValueHeight,
                onChanged: (value) {
                  setState(() {
                    dropValueHeight = value!;
                  });
                },
                onTapMinus: onTapMinusHeight,
                onTapPlus: onTapPlusHeight,
              ),
              AppSizedBox.sizedBoxMainColumn,
              const AgeColumn(),
              AppSizedBox.sizedBoxCalculate,
              CalculateContainer(
                  onTap: dropValueWeight != null && dropValueHeight != null
                      ? onTapCalculate
                      : () {
                          AudioPlayer().play(AssetSource("audios/error.mp3"));
                        },
                  calculateTitle: AppTitles.stringCalculate),
            ],
          ),
        ),
      ),
    );
  }

  void checkDropButton() {
    if (dropValueWeight == "lbs" && dropValueHeight == "ft") {
      result = (weightNumber * 0.45) /
          (((heightNumber * 30.48) / 100) * ((heightNumber * 30.48) / 100));
    } else if (dropValueWeight == "lbs") {
      result =
          (weightNumber * 0.45) / ((heightNumber / 100) * (heightNumber / 100));
    } else if (dropValueHeight == "ft") {
      result = weightNumber /
          (((heightNumber * 30.48) / 100) * ((heightNumber * 30.48) / 100));
    } else {
      result = weightNumber / ((heightNumber / 100) * (heightNumber / 100));
    }
  }

  void onTapCalculate() {
    AudioPlayer().play(AssetSource("audios/click2.mp3"));
    checkDropButton();

    checkResult(result);
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              SecondPage(bmiResult: allBmiResult!, iconString: pngIcon),
        ));
  }

  void checkResult(double result) {
    if (result >= 18.5 && result <= 24.9) {
      pngIcon = "assets/icons/checked.png";
      allBmiResult = "Normal Weight: ${result.toStringAsFixed(2)}";
    } else if (result < 18.5) {
      pngIcon = "assets/icons/cancel.png";

      allBmiResult = "Under Weight: ${result.toStringAsFixed(2)}";
    } else {
      pngIcon = "assets/icons/graph.gif";

      allBmiResult = "Over Weight: ${result.toStringAsFixed(2)}";
    }
  }

  void onTapMinusWeight() {
    if (weightNumber > 1) {
      weightNumber--;
      setState(() {});
    }
  }

  void onTapPlusWeight() {
    if (weightNumber < 350) {
      weightNumber++;
      setState(() {});
    }
  }

  void onTapMinusHeight() {
    if (heightNumber > 1) {
      heightNumber--;
      setState(() {});
    }
  }

  void onTapPlusHeight() {
    if (heightNumber < 300) {
      heightNumber++;
      setState(() {});
    }
  }
}
