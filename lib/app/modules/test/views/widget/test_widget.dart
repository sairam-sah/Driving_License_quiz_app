import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/values/s_dimension.dart';
import '../../controllers/test_controller.dart';

final controller = Get.find<TestController>();

Widget TestOption(int index, String text) {
  return InkWell(
    onTap: () {
      controller.setSelectedIndex(index);
    },
    child: Obx(
      () {
        Color backgroundColor = Colors.white; // Default background color
        if (controller.selectedIndices.value == index) {
          // If this option is selected
          if (controller.correctIndex == index) {
            // If this option is correct
            backgroundColor = Get
                .theme.colorScheme.secondary; // Set background color to green
          } else {
            backgroundColor = Get.theme.colorScheme
                .secondary; // Set background color to red for incorrect answers
          }
        }
        return Container(
          height: 50,
          width: Get.width,
          padding: const EdgeInsets.all(SDimension.md),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(text),
        );
      },
    ),
  );
}