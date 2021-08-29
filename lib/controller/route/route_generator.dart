
import 'package:flutter/material.dart';
import 'package:iptek_flutter_web/view/landingpage.dart';

class RouteGenerator {
 static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const LandingPage());
      default:
        return MaterialPageRoute(builder: (context) => const LandingPage());
    }
  }
}
