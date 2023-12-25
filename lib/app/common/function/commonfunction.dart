
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
// import 'package:fluttertoast/fluttertoast.dart';

class CommonFunctions {

  static void hideKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  // Show Alert
  static void showAlert(String message, {Color? color}) {
    Fluttertoast.cancel();
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: color ?? Colors.red,
    );
  }

  static double screenHeight(context) => MediaQuery.of(context).size.height;
  static double safepadding(context) =>  MediaQuery.of(context).padding.top;
  static double screenWidth(context) => MediaQuery.of(context).size.width;
  static double safePadding(context) => MediaQuery.of(context).padding.top;
  static SizedBox spacey(double height) => SizedBox(height:height,);
  static SizedBox spacex(double width) => SizedBox(width:width,);

  static Future<bool> hasNetwork() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

}
