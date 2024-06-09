import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'package:get/get.dart';

import '../../../core/values/s_dimension.dart';
import '../../../core/values/s_spacing.dart';
import '../../../routes/app_pages.dart';
import '../controllers/otp_controller.dart';

class OtpView extends GetView<OtpController> {
  const OtpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
      final bool? isEmail = Get.arguments as bool?;
      final String text = isEmail == true 
      ? 'Enter the verification code sent to your email ' 
      : 'Enter the verification code sent to phone Number';


    return Scaffold(
      body: SafeArea(
       child: Container(
            height: Get.height,
          width: Get.width,
          padding: const EdgeInsets.all(SDimension.xxxl),
          decoration: BoxDecoration(color: Get.theme.colorScheme.onPrimary.withOpacity(0.5)),
          child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               Image.asset('assets/240_F_554226902_.jpg',
               height: 251,
               width: 321),

               SSpacing.xlH,

               Text('Verification',
               style: Get.textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold)),
                Text(text,
                textAlign: TextAlign.center,style: Get.textTheme.titleSmall),

                SSpacing.xlH,

              OtpTextField(
               numberOfFields: 6,
               fillColor: Get.theme.colorScheme.tertiary.withOpacity(0.1),
               filled: true,
               // ignore: avoid_print
               onSubmit: (code){print("OTP is => $code");},
              ),

                 SSpacing.xlH,
                          
                           Text('Did not receive any code? Resend Again',
                           style: Get.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold)),
                           Text('Request now code in 00:30s',
                           style: Get.textTheme.bodyMedium),

                            const SizedBox(height: 135),

                            SizedBox(width: double.infinity,
                              child: FloatingActionButton( elevation: 0,onPressed: () {
                                    Get.toNamed(Routes.SIGNIN);
                                  }, child: Text('Next',style: Get.textTheme.titleLarge!.copyWith(color:Get.theme.colorScheme.primary))),
                            ),
                              
              ]))),
     ));
    
  
  }
}
