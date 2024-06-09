import 'package:driving_license/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/values/s_dimension.dart';
import '../../../core/values/s_spacing.dart';
import '../controllers/signin_controller.dart';
import 'widget/login_text_field_view.dart';


class SigninView extends GetView<SigninController> {
   const SigninView({super.key});
   
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SigninController());
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      body: SafeArea(
          child: Container(
              height: Get.height,
              width: Get.width,
              padding: const EdgeInsets.all(SDimension.xxxl),
              child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      ClipOval(
                         child: Image.asset(
                          'assets/beside-luxury-of-sport-car-blue-color-on-backdrop-of-gradient-white-color-with-shadow-of-car-on-the-ground-and-gradient-of-blue-to-white-background-free-vector.jpg',
                        ),
                      ),

                           Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Welcome Back',
                                    style: Get.textTheme.titleLarge!
                                        .copyWith(fontWeight: FontWeight.bold)),
                                Text('sign in to acess your account',
                                    style: Get.textTheme.bodyMedium)
                              ]),

                    SSpacing.xlH,

                    Form(key:formKey ,
                        child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: SDimension.lg),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  FormFieldWidget(
                                    controller: controller.email,
                                    title: 'Enter your email',
                                    suffixIcon: Icons.mail_outlined,
                                  ),

                                  SSpacing.xxxlH,

                                  FormFieldWidget(
                                    controller: controller.password,
                                    title: 'password',
                                    suffixIcon: Icons.remove_red_eye,
                                  ),

                                ]))),

                    Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (contex) => Container(
                                  height: 270,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: SDimension.xxxl,
                                      vertical: SDimension.lg),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [

                                      Text(
                                        'Make Selection',
                                        style: Get.textTheme.titleLarge!
                                            .copyWith(
                                                fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Select one of the option given below to reset your password',
                                        style: Get.textTheme.bodySmall,
                                      ),

                                      SSpacing.mdH,

                                      InkWell(
                                        onTap: () {
                                          Get.back();
                                          Get.toNamed(Routes.FORGET_PASSWORD,arguments:true);
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.all(
                                              SDimension.md),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Get
                                                  .theme.colorScheme.primaryContainer
                                                  .withOpacity(0.3)),
                                          child: const ForgetWidget(
                                        
                                              title: 'E-Mail',
                                              subtitle:
                                                  'Reset via E-Mail Verification',
                                              iconData: Icons.email_outlined),
                                        ),
                                      ),

                                      SSpacing.lgH,

                                      InkWell(
                                        onTap: () {
                                          Get.back();
                                          Get.toNamed(Routes.FORGET_PASSWORD,arguments: false);
                                        },
                                        child: Container(
                                            padding: const EdgeInsets.all(
                                                SDimension.md),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Get
                                                    .theme.colorScheme.primaryContainer
                                                    .withOpacity(0.4)),
                                            child: const ForgetWidget(
                                                title: 'Phone Number',
                                                subtitle:
                                                    'Reset via Phone No Verification',
                                                iconData: Icons.phone)),
                                      ),

                                    ],
                                  ),
                                ),
                              );
                            },
                            child: Text(
                              'Forget Password?',
                              textAlign: TextAlign.right,
                              style: Get.textTheme.bodyLarge!.copyWith(
                                  color: Get.theme.colorScheme.primary),
                            ))),

                    const SizedBox(height: 70),

                    SizedBox(
                      width: double.infinity,
                      child: FloatingActionButton(elevation: 0,
                          onPressed: () {
                             if(formKey.currentState!.validate()){
                              SigninController.instance.registeredUser(controller.email.text.trim(),controller.password.text.trim());
                               }
                          },
                          child:Text('Log In', style: Get.textTheme.titleLarge!.copyWith(color: Get.theme.colorScheme.primary)),
                              ),
                    ),

                    SSpacing.mdH,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'New Member? ',
                          style: Get.textTheme.bodyMedium,
                        ),
                        InkWell(
                          onTap: () {
                            Get.toNamed(Routes.SIGNUP);
                            // Get.toNamed(Routes.CHANGE_PASSWORD);
                          },
                          child: Text(
                            'Register Now',
                            style: Get.textTheme.bodyMedium!
                                .copyWith(color: Get.theme.colorScheme.primary),
                          ),
                        )
                      ],
                    )

                  ])))),
    );
  }
}