import 'package:driving_license/app/modules/repositary/authentication_repository/authentication_repository.dart';
import 'package:driving_license/app/modules/repositary/firebasemessaging.dart';
import 'package:driving_license/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform );
  await FirebaseApi().initNotification();
  Get.put(AuthenticationRepository());
  // fianl isAuthenticated.value =false.obs;
  // var initial = '';
  //   isAuthenticated.value = GetStorage().read('isAuthenticated') ?? false;

  //   if (!isAuthenticated.value) {
  //     // If not authenticated, redirect to login page
  //   initial = Routes.SIGNIN;
  //   } else {
  //   initial = Routes.HOME;
  //   }
  
    runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      defaultTransition: Transition.leftToRight,
      transitionDuration: const Duration(milliseconds: 500),
    ),
  );
}
