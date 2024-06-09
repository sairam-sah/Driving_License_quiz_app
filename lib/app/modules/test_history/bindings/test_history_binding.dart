import 'package:get/get.dart';

import '../controllers/test_history_controller.dart';

class TestHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TestHistoryController>(
      () => TestHistoryController(),
    );
  }
}
