import 'dart:ffi';

import 'package:audioplayers/audioplayers.dart';

class AppMusics
 {
  AppMusics._();

  static Future clickOk=AudioPlayer().play(AssetSource("audios/click2.mp3"));
  
  
}