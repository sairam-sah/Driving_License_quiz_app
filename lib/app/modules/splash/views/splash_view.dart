import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/beside-luxury-of-sport-car-blue-color-on-backdrop-of-gradient-white-color-with-shadow-of-car-on-the-ground-and-gradient-of-blue-to-white-background-free-vector.jpg'),
          Image.asset('assets/Parking.png')
        ]
       
      )
    );
  }
}
