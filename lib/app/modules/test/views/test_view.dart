import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/values/s_dimension.dart';
import '../../../core/values/s_spacing.dart';
import '../../../routes/app_pages.dart';
import '../controllers/test_controller.dart';
import 'widget/test_widget.dart';

class TestView extends GetView<TestController> {
  const TestView({Key? key}) : super(key: key);
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

                  Container(
                      padding: SSpacing.lgMargin,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // head
                            InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: Icon(
                                Icons.chevron_left,
                                color: Get.theme.colorScheme.onPrimary,
                              ),
                            ),

                            Text('Test',
                                style: Get.textTheme.bodyLarge!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Get.theme.colorScheme.onPrimary)),

                            Row(
                              children: [
                                Icon(Icons.tiktok,
                                    color: Get.theme.colorScheme.onPrimary),
                                Text(
                                  '3:49',
                                  style: Get.textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Get.theme.colorScheme.onPrimary),
                                )
                              ],
                            )
                          ])),

                  //body
                  Container(
                      height: 600,
                      width: Get.width,
                      margin: const EdgeInsets.symmetric(),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Get.theme.colorScheme.onPrimaryContainer
                              .withOpacity(0.7)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: SDimension.md, vertical: SDimension.md),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Question',
                              style: Get.textTheme.bodyLarge!.copyWith(
                                  color: Get.theme.colorScheme.onPrimary,
                                  fontWeight: FontWeight.bold),
                            ),

                            Row(children: [
                              Flexible(
                                flex: 3,
                                child: Container(
                                  height: 2,
                                  decoration: BoxDecoration(
                                      color: Get.theme.colorScheme.onTertiary),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  height: 2,
                                  decoration: BoxDecoration(
                                      color: Get.theme.colorScheme.secondary),
                                ),
                              ),
                              SSpacing.mdW,
                              Text(
                                '19/25',
                                style: Get.textTheme.bodyLarge!.copyWith(
                                    color: Get.theme.colorScheme.onPrimary,
                                    fontWeight: FontWeight.bold),
                              ),
                            ]),
                            
                            
                            Container(
                              height: 200,
                              width: Get.width,
                              padding: const EdgeInsets.all(SDimension.md),
                              decoration: BoxDecoration(
                                  color: Get.theme.colorScheme.onPrimary,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Column(
                                children: [
                                  Container(
                                    height: 100,
                                    width: Get.width,
                                    alignment: Alignment.center,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        'assets/lcarticle.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  
                                  SSpacing.lgH,

                                  const Text(
                                      'What should you do if fog closes in completely while you are driving, and visibility is reduced to near zero?'),
                                ],
                              ),
                            ),
                         
                            TestOption(1, 'Slow down and take a detour'),
                           
                            TestOption(2, 'Use your lower beams'),
                           
                            TestOption(3, 'Carefully pull as far off the road'),
                            
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      controller.checkAnswer();
                                    },
                                    child: const Text('Answer')),
                                SSpacing.lgW,
                                ElevatedButton(
                                    onPressed: () {},
                                    child: const Text('Next')),
                              ],
                            ),
                            
                            InkWell(
                              onTap: () {},
                              child: ElevatedButton(
                                  onPressed: () {
                                    Get.toNamed(Routes.TEST_COMPLETE);
                                  },
                                  child: Text(
                                    'Finish The Test',
                                    style: Get.textTheme.bodyLarge!.copyWith(
                                        decoration: TextDecoration.underline),
                                  )),
                            ),
                          ])),
                ])))));
  }
}
