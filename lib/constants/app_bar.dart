import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarClass {
  AppBarClass._();

  static AppBar appBar = AppBar(
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(Icons.menu),
        );
      },
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const FaIcon(FontAwesomeIcons.bell),
      )
    ],
  );
}
