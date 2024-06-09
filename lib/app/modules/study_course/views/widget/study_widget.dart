import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/values/s_spacing.dart';

class StudyWidget extends StatelessWidget {
  const StudyWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imageUrl});

  final String title;
  final String imageUrl;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Container(
              height: 70,
              width: 80,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.fill,
              )),

          SSpacing.lgW,

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Get.textTheme.bodyMedium!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              
              Text(
                subtitle,
                style: Get.textTheme.bodyMedium!.copyWith(),
              ),
            ],
          )
        ],
      ),
    );
  }
}