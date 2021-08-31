import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

class PopUpLoading {
  //Loading Login Progress
  void onLoading(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              LoadingBouncingGrid.circle(
                inverted: true,
                borderColor: const Color(0xFF35386D),
                borderSize: 3.0,
                size: 60.0,
                backgroundColor: Colors.white,
                duration: const Duration(milliseconds: 1000),
              ),
              const SizedBox(height: 20),
              // new Text(
              //   "Please Wait",
              //   textAlign: TextAlign.center,
              //   style: TextStyle(color: Colors.white, fontSize: 20),
              // ),
            ]);
      },
    );
  }
}
