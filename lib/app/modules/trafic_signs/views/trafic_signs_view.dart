import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/values/s_dimension.dart';
import '../../../core/values/s_spacing.dart';
import '../controllers/trafic_signs_controller.dart';
import 'warning_sign_view.dart';
import 'widget/signs_widget.dart';

class TraficSignsView extends GetView<TraficSignsController> {
  const TraficSignsView({Key? key}) : super(key: key);
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

                            const SizedBox(width: 100),

                            Text('Road Signs',
                                textAlign: TextAlign.center,
                                style: Get.textTheme.bodyLarge!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Get.theme.colorScheme.onPrimary)),
                          ])),
                  Container(
                      height: 550,
                      width: Get.width,
                      margin: const EdgeInsets.symmetric(),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Get.theme.colorScheme.onPrimaryContainer),
                      padding: const EdgeInsets.symmetric(
                          horizontal: SDimension.md,
                          vertical: SDimension.jumbo),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            
                            InkWell(
                              onTap: () {
                                Get.to(()=>const WarningSignsView());
                              },
                              child: Container(
                                height: 74,
                                width: Get.width,
                                padding: const EdgeInsets.all(SDimension.md),
                                decoration: BoxDecoration(
                                    color: Get.theme.colorScheme.onPrimary,
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Column(
                                  children: [
                                    SignsWidget(
                                        title: 'Warning Signs',
                                        iconData: Icons.chevron_right,
                                        imageUrl: 'assets/360_F.png')
                                  ],
                                ),
                              ),
                            ),

                            Container(
                              height: 74,
                              width: Get.width,
                              padding: const EdgeInsets.all(SDimension.md),
                              decoration: BoxDecoration(
                                  color: Get.theme.colorScheme.onPrimary,
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Column(
                                children: [
                                  SignsWidget(
                                      title: 'Priority Signs',
                                      iconData: Icons.chevron_right,
                                      imageUrl: 'assets/377.png')
                                ],
                              ),
                            ),

                            Container(
                              height: 74,
                              width: Get.width,
                              padding: const EdgeInsets.all(SDimension.md),
                              decoration: BoxDecoration(
                                  color: Get.theme.colorScheme.onPrimary,
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Column(
                                children: [
                                  SignsWidget(
                                      title: 'Forbidden signs',
                                      iconData: Icons.chevron_right,
                                      imageUrl: 'assets/no-photography.png')
                                ],
                              ),
                            ),

                            Container(
                              height: 74,
                              width: Get.width,
                              padding: const EdgeInsets.all(SDimension.md),
                              decoration: BoxDecoration(
                                  color: Get.theme.colorScheme.onPrimary,
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Column(
                                children: [
                                  SignsWidget(
                                      title: 'Marks of special regulation',
                                      iconData: Icons.chevron_right,
                                      imageUrl: 'assets/Zeichen.png')
                                ],
                              ),
                            ),

                            Container(
                              height: 74,
                              width: Get.width,
                              padding: const EdgeInsets.all(SDimension.md),
                              decoration: BoxDecoration(
                                  color: Get.theme.colorScheme.onPrimary,
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Column(
                                children: [
                                  SignsWidget(
                                      title: 'Information Signs',
                                      iconData: Icons.chevron_right,
                                      imageUrl: 'assets/What-are.png')
                                ],
                              ),
                            ),

                          ]))
                ])))));
  }
}

