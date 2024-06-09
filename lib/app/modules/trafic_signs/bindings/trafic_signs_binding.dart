import 'package:get/get.dart';

import '../controllers/trafic_signs_controller.dart';

class TraficSignsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TraficSignsController>(
      () => TraficSignsController(),
    );
  }
}
