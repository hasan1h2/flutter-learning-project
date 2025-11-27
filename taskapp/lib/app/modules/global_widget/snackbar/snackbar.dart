import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MySnackbar {
  static void showWarning(
    String msg,
    String msgDec,
    int textColor,
    int bgColor,
  ) {
    Get.snackbar(
      msg,
      msgDec,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor:Color(bgColor),
      colorText:Color(textColor),
    );
  }


  static dynamic showWarning1(
      String msg,
      String msgDec,
      int textColor,
      int bgColor,
      ) {
 Get.snackbar(
      msg,
      msgDec,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor:Color(bgColor),
      colorText:Color(textColor),
    );
  }

}

// "Warning" "Please check 'Remember me' to continue"  Colors.redAccent FF5252FF
