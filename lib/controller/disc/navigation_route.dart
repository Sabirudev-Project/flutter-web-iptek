import 'package:flutter/material.dart';

class NavRoute {
  Future navigation(MaterialPageRoute route, BuildContext context) async {
    Navigator.push(context, route);
  }

  Future navfull(MaterialPageRoute route, BuildContext context) async {
    Navigator.pushAndRemoveUntil(
        context, route, (Route<dynamic> route) => false);
  }
}
