import 'package:get/get.dart';

import '../controllers/truck_panel_controller.dart';

class TruckPanelBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TruckPanelController>(
      () => TruckPanelController(),
    );
  }
}
