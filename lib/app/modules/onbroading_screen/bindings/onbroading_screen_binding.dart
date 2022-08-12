import 'package:get/get.dart';

import '../controllers/onbroading_screen_controller.dart';

class OnbroadingScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnbroadingScreenController>(
      () => OnbroadingScreenController(),
    );
  }
}
