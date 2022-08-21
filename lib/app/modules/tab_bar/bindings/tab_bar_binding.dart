import 'package:get/get.dart';

import '../controllers/tab_bar_controller.dart';

class TabBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabBarController>(
      () => TabBarController(),
    );
  }
}
