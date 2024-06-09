import 'package:get/get.dart';

import '../controllers/study_course_controller.dart';

class StudyCourseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StudyCourseController>(
      () => StudyCourseController(),
    );
  }
}
