import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestController extends GetxController {
  //TODO: Implement TestController

  Rx<int> selectedIndices = (-1).obs;
  int correctIndex = 1;

  void setSelectedIndex(int index) {
    selectedIndices.value = index;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void checkAnswer() {
    // Check if the selected index is the correct answer
    if (selectedIndices.value == correctIndex) {
      // Correct answer selected
      Get.snackbar('Answer', 'Correct Answer!', backgroundColor: Colors.green);
    } else {
      // Incorrect answer selected
      Get.snackbar('Answer', 'Incorrect Answer!', backgroundColor: Colors.red);
    }
  }
}