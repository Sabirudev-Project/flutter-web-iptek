import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastManagement {
  //Show toast with string
  Future showToast(String message) async {
    Fluttertoast.showToast(
        msg: "$message",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Color(0xFF4E55A4),
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
