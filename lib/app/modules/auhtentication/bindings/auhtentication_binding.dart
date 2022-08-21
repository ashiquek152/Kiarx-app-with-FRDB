import 'package:get/get.dart';

import '../controllers/auhtentication_controller.dart';

class AuhtenticationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuhtenticationController>(
      () => AuhtenticationController(),
    );
  }
}
