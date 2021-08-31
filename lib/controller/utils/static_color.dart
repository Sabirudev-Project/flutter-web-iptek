import 'package:flutter/material.dart';

class StaticColor {
  static Color primaryColor = const Color(0xFF9bccd2);
  static Color sideColor = const Color(0xFF91A3BA);

// Lets replace all static sizes
  static const double kDesktopMaxWidth = 1000.0;
  static const double kTabletMaxWidth = 760.0;
  static double getMobileMaxWidth(BuildContext context) =>
      MediaQuery.of(context).size.width * .8;
}

class Globals {
  static GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
}
