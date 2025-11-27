import 'package:get/get.dart';

import '../../ General_controller/controllers/general_controller_controller.dart';
import '../../profile_page/controllers/profile_page_controller.dart';
import '../../task_details_page/controllers/task_details_page_controller.dart';
import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<TaskDetailsPageController>(() => TaskDetailsPageController());
    Get.lazyPut<GeneralControllerController>(
      () => GeneralControllerController(),
    );
    Get.lazyPut<ProfilePageController>(() => ProfilePageController());
  }
}
