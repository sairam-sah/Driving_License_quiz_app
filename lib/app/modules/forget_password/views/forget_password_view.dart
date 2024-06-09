import 'package:driving_license/app/core/values/s_spacing.dart';
import 'package:driving_license/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/values/s_dimension.dart';
import '../controllers/forget_password_controller.dart';
import 'widget/forgetwidget.dart';


class ForgetPasswordView extends GetView<ForgetPasswordController> {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
      final bool isEmail = Get.arguments as bool;
    final String hintText = isEmail? 'Enter your email':'Enter your phone number';

    final String text = isEmail? 'Receive an email to reset your password' : 'Receive an Phone Number to reset your password';

    IconData suffixIcon = isEmail ? Icons.email_outlined : Icons.phone_outlined;
   
    return Scaffold(
      body:SafeArea(
       child: Container(
          height: Get.height,
        width: Get.width,
        padding: const EdgeInsets.all(SDimension.xxl),
        decoration: BoxDecoration(color: Get.theme.colorScheme.onPrimary.withOpacity(0.5)),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            children: [

             Image.asset('assets/istockphoto-1306827906-612x612.jpg',
             height:251,
             width: 321,),

             Text('Forget Password',
             style: Get.textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold)),
             Text(text,
             textAlign: TextAlign.center,style: Get.textTheme.titleSmall),

              SSpacing.xlH,

               forgetWidget(hintText: hintText,
               suffixIcon:suffixIcon),

                        const SizedBox(height: 175,),

                   SizedBox(width: double.infinity,
                            child: FloatingActionButton(elevation: 0,onPressed: () {
                                // controller.resetPassword(Get.find<ForgetPasswordController>().text);
                                  Get.toNamed(Routes.OTP);
                                }, child: Text('Next',style: Get.textTheme.titleLarge!.copyWith(color:Get.theme.colorScheme.primary))),
                          ),
                            
            ]))))
    
    );
  }
}

