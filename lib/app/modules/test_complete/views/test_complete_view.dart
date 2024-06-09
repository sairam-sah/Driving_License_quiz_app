import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

import '../../../core/values/s_dimension.dart';
import '../../../core/values/s_spacing.dart';
import '../../../routes/app_pages.dart';
import '../controllers/test_complete_controller.dart';

class TestCompleteView extends GetView<TestCompleteController> {
  const TestCompleteView({Key? key}) : super(key: key);
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
                  SSpacing.mdW,
                  Text('Home',
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
                    color: Get.theme.colorScheme.onPrimary),
                padding: const EdgeInsets.symmetric(
                    horizontal: SDimension.md, vertical: SDimension.md),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      
                      Text(
                        'Congratulation!',
                        style: Get.textTheme.bodyLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),

                      SSpacing.lgH,

                      SimpleCircularProgressBar(
                        mergeMode: false,
                        valueNotifier: ValueNotifier(80),
                        onGetText: (double value) {
                          return Text('${value.toInt()}%',
                              style: Get.textTheme.titleLarge!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Get
                                      .theme.colorScheme.onPrimaryContainer));
                        },
                      ),

                      SSpacing.lgH,

                      Text('Driving Test Passed',
                          style: Get.textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Get.theme.colorScheme.primary)),

                      SSpacing.jumboH,

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              const Text('46/50'),
                              Text('Results', style: Get.textTheme.bodyMedium)
                            ],
                          ),
                          Column(
                            children: [
                              const Text('19:20'),
                              Text('Time', style: Get.textTheme.bodyMedium)
                            ],
                          ),
                        ],
                      ),

                      SSpacing.jumboH,

                      ElevatedButton(onPressed: (){Get.toNamed(Routes.HOME);}, child: Text('Start New Test')),

                      SSpacing.jumboH,

                      ElevatedButton(onPressed:(){}, child:  Text('Check Results'))
                     
                    ]))
          ]))),
    ));
  }
}

