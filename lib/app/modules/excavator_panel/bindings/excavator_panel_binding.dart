import 'package:get/get.dart';

import '../controllers/excavator_panel_controller.dart';

class ExcavatorPanelBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExcavatorPanelController>(
      () => ExcavatorPanelController(),
    );
  }
}
