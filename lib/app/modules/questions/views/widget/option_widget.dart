



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/values/s_dimension.dart';
import '../../controllers/questions_controller.dart';

class OptionView extends StatelessWidget {
  const OptionView({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final int value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(value: value, groupValue: 1, onChanged: (value) {}),
        Text(title),
      ],
    );
  }
}

// Build Option
final controller = Get.find<QuestionsController>();

Widget buildOption(int index, String text) {
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
            backgroundColor = Get.theme.colorScheme.secondary; // Set background color to green
          } else {
            backgroundColor = Get.theme.colorScheme.secondary; // Set background color to red for incorrect answers
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
