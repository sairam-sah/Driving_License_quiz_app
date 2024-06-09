import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../../../core/values/s_dimension.dart';
import '../../../core/values/s_spacing.dart';
import '../controllers/test_history_controller.dart';
import 'widget/stat_widget.dart';

class TestHistoryView extends GetView<TestHistoryController> {
  const TestHistoryView({Key? key}) : super(key: key);
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
                          mainAxisAlignment: MainAxisAlignment.start,
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

                            const SizedBox(
                              width: 100,
                            ),

                            Text('Test History',
                                textAlign: TextAlign.center,
                                style: Get.textTheme.bodyLarge!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Get.theme.colorScheme.onPrimary)),
                          ])),
                  Container(
                      // height: 600,
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
                            SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Container(
                                  // height: 500,
                                  width: Get.width,
                                  margin: const EdgeInsets.symmetric(vertical: SDimension.md),
                                  padding: const EdgeInsets.all(SDimension.md),
                                  decoration: BoxDecoration(
                                      color: Get.theme.colorScheme.onPrimary,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Overview',
                                          style: Get.textTheme.bodyLarge!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold),
                                        ),
                                        SSpacing.lgH,
                                        Container(
                                            height: 120,
                                            width: Get.width,
                                            padding: SSpacing.lgMargin,
                                            decoration: BoxDecoration(
                                                border: Border.all(),
                                                color: Get
                                                    .theme.colorScheme.secondary
                                                    .withOpacity(0.3),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: const Column(
                                              children: [
                                                StatusView(
                                                    title: 'Status of the test',
                                                    subtitle: 'PASSED',
                                                    c: Colors.green),
                                                SSpacing.mdH,
                                                StatusView(
                                                    title:
                                                        'Number of correct answer',
                                                    subtitle: '30/30',
                                                    c: Colors.black),
                                                SSpacing.mdH,
                                                StatusView(
                                                    title: 'Total Learning Time',
                                                    subtitle: '27 min',
                                                    c: Colors.black),
                                              ],
                                            )),
                                        SSpacing.lgH,
                                        Container(
                                            height: 120,
                                            width: Get.width,
                                            padding: SSpacing.lgMargin,
                                            decoration: BoxDecoration(
                                                color: Get
                                                    .theme.colorScheme.tertiary
                                                    .withOpacity(0.5),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: const Column(
                                              children: [
                                                StatusView(
                                                    title: 'Status of the test',
                                                    subtitle: 'FAILED',
                                                    c: Colors.red),
                                                SSpacing.mdH,
                                                StatusView(
                                                    title:
                                                        'Number of correct answer',
                                                    subtitle: '30/30',
                                                    c: Colors.black),
                                                SSpacing.mdH,
                                                StatusView(
                                                    title: 'Total Learning Time',
                                                    subtitle: '27 min',
                                                    c: Colors.black),
                                              ],
                                            )),
                                        SSpacing.lgH,
                                        Container(
                                            height: 120,
                                            width: Get.width,
                                            padding: SSpacing.lgMargin,
                                            decoration: BoxDecoration(
                                                color: Get
                                                    .theme.colorScheme.secondary
                                                    .withOpacity(0.3),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: const Column(
                                              children: [
                                                StatusView(
                                                    title: 'Status of the test',
                                                    subtitle: 'PASSED',
                                                    c: Colors.green),
                                                SSpacing.mdH,
                                                StatusView(
                                                    title:
                                                        'Number of correct answer',
                                                    subtitle: '30/30',
                                                    c: Colors.black),
                                                SSpacing.mdH,
                                                StatusView(
                                                    title: 'Total Learning Time',
                                                    subtitle: '27 min',
                                                    c: Colors.black),
                                              ],
                                            )),
                              
                                            SSpacing.lgH,
                              
                                            Container(
                                            height: 120,
                                            width: Get.width,
                                            padding: SSpacing.lgMargin,
                                            decoration: BoxDecoration(
                                                color: Get
                                                    .theme.colorScheme.tertiary
                                                    .withOpacity(0.5),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: const Column(
                                              children: [
                                                StatusView(
                                                    title: 'Status of the test',
                                                    subtitle: 'FAILED',
                                                    c: Colors.red),
                                                SSpacing.mdH,
                                                StatusView(
                                                    title:
                                                        'Number of correct answer',
                                                    subtitle: '30/30',
                                                    c: Colors.black),
                                                SSpacing.mdH,
                                                StatusView(
                                                    title: 'Total Learning Time',
                                                    subtitle: '27 min',
                                                    c: Colors.black),
                                              ],
                                            )),
                              
                                            SSpacing.lgH,
                              
                                            Container(
                                            height: 120,
                                            width: Get.width,
                                            padding: SSpacing.lgMargin,
                                            decoration: BoxDecoration(
                                                color: Get
                                                    .theme.colorScheme.tertiary
                                                    .withOpacity(0.5),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: const Column(
                                              children: [
                                                StatusView(
                                                    title: 'Status of the test',
                                                    subtitle: 'FAILED',
                                                    c: Colors.red),
                                                SSpacing.mdH,
                                                StatusView(
                                                    title:
                                                        'Number of correct answer',
                                                    subtitle: '30/30',
                                                    c: Colors.black),
                                                SSpacing.mdH,
                                                StatusView(
                                                    title: 'Total Learning Time',
                                                    subtitle: '27 min',
                                                    c: Colors.black),
                                              ],
                                            )),
                              
                                            SSpacing.lgH,
                              
                                            Container(
                                            height: 120,
                                            width: Get.width,
                                            padding: SSpacing.lgMargin,
                                            decoration: BoxDecoration(
                                                color: Get
                                                    .theme.colorScheme.tertiary
                                                    .withOpacity(0.5),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: const Column(
                                              children: [
                                                StatusView(
                                                    title: 'Status of the test',
                                                    subtitle: 'FAILED',
                                                    c: Colors.red),
                                                SSpacing.mdH,
                                                StatusView(
                                                    title:
                                                        'Number of correct answer',
                                                    subtitle: '30/30',
                                                    c: Colors.black),
                                                SSpacing.mdH,
                                                StatusView(
                                                    title: 'Total Learning Time',
                                                    subtitle: '27 min',
                                                    c: Colors.black),
                                              ],
                                            )),
                                      ])),
                            )
                          ]))
                ])))));
  }
}