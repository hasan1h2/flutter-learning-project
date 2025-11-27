import 'package:get/get.dart';
import '../controllers/general_controller_controller.dart';
class GeneralControllerBindings extends Bindings {
  @override
  void dependencies() {
 Get.lazyPut<GeneralControllerController>(() => GeneralControllerController(),);
  }
}
