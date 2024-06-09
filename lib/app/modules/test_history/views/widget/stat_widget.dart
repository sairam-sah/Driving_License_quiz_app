import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StatusView extends StatelessWidget {
  const StatusView({
    super.key,
    required this.title,
    required this.subtitle,
    required this.c,
  });
  final String title;
  final String subtitle;

  final Color c;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Get.textTheme.bodyMedium),
        Text(subtitle, style: Get.textTheme.bodyMedium!.copyWith(color: c))
      ],
    );
  }
}
