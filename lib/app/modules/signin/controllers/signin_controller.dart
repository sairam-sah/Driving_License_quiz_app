import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../repositary/authentication_repository/authentication_repository.dart';

class SigninController extends GetxController {
  //TODO: Implement SigninController
   static SigninController get instance => Get.find();


   //TextField controller to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();

 void registeredUser(String email,String password){
    AuthenticationRepository.instance.loginWithEmailAndPassword(email,password);

  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
