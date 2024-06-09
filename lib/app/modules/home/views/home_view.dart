import 'package:driving_license/app/core/values/s_spacing.dart';
import 'package:driving_license/app/modules/repositary/authentication_repository/authentication_repository.dart';
import 'package:driving_license/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/values/s_dimension.dart';
import '../controllers/home_controller.dart';
import 'Widget_View.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
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
          child: Column(
            children: [
              //head
              Container(
                padding: SSpacing.lgMargin,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [


                      Icon(
                      Icons.menu,
                      color: Get.theme.colorScheme.onPrimary,
                    ),

                       Text('Home',
                        style: Get.textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Get.theme.colorScheme.onPrimary)),
                         

                         InkWell(
                          onTap: () {
                            AuthenticationRepository.instance.logout();
                          },
                           child: Icon(Icons.person_2_outlined,
                            color: Get.theme.colorScheme.onPrimary,
                           ),
                         )

                        // Container(
                        // height: 40,
                        // width: 40,
                        // decoration: const BoxDecoration(
                        //   shape: BoxShape.circle,
                        // ),
                        // child: Image.asset(
                        //   'assets/photo-1.png',
                        //   fit: BoxFit.cover,
                        // )),
                  
                  ],
                ),
              ),

              //body
              Container(
                height: 550,
                width: Get.width,
                margin: const EdgeInsets.symmetric(),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Get.theme.colorScheme.onPrimaryContainer),
                padding: const EdgeInsets.symmetric(
                    horizontal: SDimension.md, vertical: SDimension.jumbo),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.QUESTIONS);
                      },
                      child: Container(
                        height: 74,
                        width: Get.width,
                        padding: const EdgeInsets.all(SDimension.md),
                        decoration: BoxDecoration(
                            color: Get.theme.colorScheme.onPrimary,
                            borderRadius: BorderRadius.circular(8)),
                        child: const Row(
                          children: [
                            NewWidget(
                              title: 'Practice Questions',
                              iconData: Icons.chevron_right,
                              imageUrl: 'assets/question.png',
                            ),
                          ],
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.TEST);
                      },
                      child:
                       Container(
                        height: 74,
                        width: Get.width,
                        padding: const EdgeInsets.all(SDimension.md),
                        decoration: BoxDecoration(
                            color: Get.theme.colorScheme.onPrimary,
                            borderRadius: BorderRadius.circular(8)),
                        child: const Column(
                          children: [
                            NewWidget(
                              title: 'Test',
                              iconData: Icons.chevron_right,
                              imageUrl: 'assets/depositphotos.png',
                            ),
                          ],
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.TRAFIC_SIGNS);
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
                            NewWidget(
                                title: 'Road Signs',
                                iconData: Icons.chevron_right,
                                imageUrl: 'assets/warning-t.png'),
                          ],
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: () {
                       Get.toNamed(Routes.STUDY_COURSE);
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
                            NewWidget(
                              title: 'Study',
                              iconData: Icons.chevron_right,
                              imageUrl: 'assets/747086.png',
                            ),
                          ],
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.TEST_HISTORY);
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
                            NewWidget(
                              title: 'Test History',
                              iconData: Icons.chevron_right,
                              imageUrl: 'assets/focus-history.png',
                            ),
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}

