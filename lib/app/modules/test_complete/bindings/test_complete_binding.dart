import 'package:get/get.dart';

import '../controllers/test_complete_controller.dart';

class TestCompleteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TestCompleteController>(
      () => TestCompleteController(),
    );
  }
}
