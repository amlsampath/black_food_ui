import 'dart:ui';

import 'package:flutter/material.dart';

class ColorConstants {
  static Color mainColor1 = const Color.fromRGBO(20, 30, 48, .98);
  static Color mainColor2 = const Color.fromRGBO(36, 59, 85, .99);

  static var appMainColor = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [mainColor1, mainColor2],
    tileMode: TileMode.clamp,
  );
}
