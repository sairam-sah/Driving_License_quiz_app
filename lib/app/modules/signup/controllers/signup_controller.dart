import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../repositary/authentication_repository/authentication_repository.dart';

class SignupController extends GetxController {
  //TODO: Implement SignupController
  static SignupController get instance => Get.find();
  
  //TextField controller to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNumber = TextEditingController();

  void registerUser(String email,String password){
    AuthenticationRepository.instance.createUserWithEmailAndPassword(email,password);

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
