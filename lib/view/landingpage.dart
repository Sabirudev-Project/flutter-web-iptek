import 'package:flutter/material.dart';
import 'package:iptek_flutter_web/controller/utils/static_color.dart';
import 'package:iptek_flutter_web/view/content/heading_1.dart';
import 'package:iptek_flutter_web/view/content/heading_2.dart';
import 'package:iptek_flutter_web/view/nav_bar/nav.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Globals.scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: Header(),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: const [
          HeadingOne(),
          HeadingTwo(),
          HeadingOne(),
          HeadingOne(),
          HeadingOne(),
          HeadingOne(),
        ],
      )),
    );
  }
}
