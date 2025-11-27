import 'package:get/get.dart';

import '../controllers/sun_up_page_controller.dart';

class SunUpPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SunUpPageController>(
      () => SunUpPageController(),
    );
  }
}
