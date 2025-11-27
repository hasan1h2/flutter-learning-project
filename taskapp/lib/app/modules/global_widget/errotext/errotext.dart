import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../data/utils/static_colors/static_colors.dart';
import '../../../data/utils/static_style/staticstyle.dart';

class ErroText {
  static Widget  erroWarning(RxString  value) {
 return Obx(
      () => Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        child: Text(
          value.value,
          style: StaticStyle.style(12, StaticColors.red, FontWeight.w400),
        ),
      ),
    );
  }
}


