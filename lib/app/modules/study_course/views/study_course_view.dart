import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/values/s_dimension.dart';
import '../../../core/values/s_spacing.dart';
import '../controllers/study_course_controller.dart';
import 'course_material_view.dart';
import 'widget/study_widget.dart';

class StudyCourseView extends GetView<StudyCourseController> {
  const StudyCourseView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                height: Get.height,
                width: Get.width,
                padding: const EdgeInsets.symmetric(
                    horizontal: SDimension.sm, vertical: SDimension.jumbo),
                decoration: BoxDecoration(color: Get.theme.colorScheme.primary),
                child: SingleChildScrollView(
                    child: Column(children: [
                  //head
                  Container(
                    padding: SSpacing.lgMargin,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.chevron_left,
                            color: Get.theme.colorScheme.onPrimary,
                          ),
                        ),

                        const SizedBox(
                          width: 100,
                        ),

                        Text('Study Course',
                            style: Get.textTheme.bodyLarge!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Get.theme.colorScheme.onPrimary)),
                      ],
                    ),
                  ),

                  Container(
                      height: 600,
                      width: Get.width,
                      margin: const EdgeInsets.symmetric(),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Get.theme.colorScheme.onPrimaryContainer),
                      padding:
                          const EdgeInsets.symmetric(horizontal: SDimension.md),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: (){
                                Get.to(()=> const CourseMaterialView());
                              },
                              child: Container(
                                height: 90,
                                width: Get.width,
                                padding: const EdgeInsets.all(SDimension.md),
                                decoration: BoxDecoration(
                                    color: Get.theme.colorScheme.onPrimary,
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Column(
                                  children: [
                                    StudyWidget(
                                      title: 'Learner Drivers First Ever\nDriving Lession -#1',
                                      subtitle: '20 min',
                                      imageUrl: 'assets/dead-end-sign.png',
                                    ),
                                  ],
                                ),
                              ),

                            ),

                             Container(
                              height: 90,
                              width: Get.width,
                              padding: const EdgeInsets.all(SDimension.md),
                              decoration: BoxDecoration(
                                  color: Get.theme.colorScheme.onPrimary,
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Column(
                                children: [
                                  StudyWidget(
                                    title: 'Driving On Busy Main Roads\nDriving Lession-#2',
                                    subtitle: '20 min',
                                    imageUrl: 'assets/pexels-photo.png',
                                  ),
                                ],
                              ),
                            ),

                             Container(
                              height: 90,
                              width: Get.width,
                              padding: const EdgeInsets.all(SDimension.md),
                              decoration: BoxDecoration(
                                  color: Get.theme.colorScheme.onPrimary,
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Column(
                                children: [
                                  StudyWidget(
                                    title: 'To Turn Right At Junction\nDriving Lession-#3',
                                    subtitle: '20 min',
                                    imageUrl: 'assets/image.png',
                                  ),
                                ],
                              ),
                            ),

                             Container(
                              height: 90,
                              width: Get.width,
                              padding: const EdgeInsets.all(SDimension.md),
                              decoration: BoxDecoration(
                                  color: Get.theme.colorScheme.onPrimary,
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Column(
                                children: [
                                  StudyWidget(
                                    title: 'Learner Driver Fails To Stop\nDriving Lession-#4',
                                    subtitle: '20 min',
                                    imageUrl: 'assets/warning-t.png',
                                  ),
                                ],
                              ),
                            ),
                            
                             Container(
                              height: 90,
                              width: Get.width,
                              padding: const EdgeInsets.all(SDimension.md),
                              decoration: BoxDecoration(
                                  color: Get.theme.colorScheme.onPrimary,
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Column(
                                children: [
                                  StudyWidget(
                                    title: 'Fails To Turn On Right Time\nDriving Lession-#4',
                                    subtitle: '20 min',
                                    imageUrl: 'assets/dead-end-sign.png',
                                  ),
                                ],
                              ),
                            ),
                          ]))
                ])))));
  }
}