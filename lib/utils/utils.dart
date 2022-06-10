import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Utils {
  static void navigateBack(
      {BuildContext? context,
      String? until,
      bool closeOverlay = false,
      String? result}) {
    // Navigator.pop(context);

    Get.back(result: result, closeOverlays: closeOverlay);
  }

  static Future<dynamic>? navigateTo(
      {BuildContext? context, required String name, dynamic args}) {
    // Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => widget,
    //     ));
    return Get.toNamed(name, arguments: args, preventDuplicates: true);
  }
}
