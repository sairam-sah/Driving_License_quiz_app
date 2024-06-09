import 'package:driving_license/app/modules/signup/views/widget/forget_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/values/s_dimension.dart';
import '../../../core/values/s_spacing.dart';
import '../../../routes/app_pages.dart';
import '../controllers/signup_controller.dart';
// ignore: must_be_immutable
class SignupView extends GetView<SignupController> {
   const SignupView({super.key});

    // @override
    //   final controller = Get.put(SignupController());
    // final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
                          // height: 251,
                          // width: 321,
                        ),
                      ),

                             Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Get Started',
                                    style: Get.textTheme.titleLarge!
                                        .copyWith(fontWeight: FontWeight.bold)),
                                Text('By creating a new account',
                                    style: Get.textTheme.bodyMedium)
                              ]),

                    // SSpacing.xlH,


                     Form(
                        child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: SDimension.lg),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  
                                   FormFieldWidget(
                                     controller: controller.fullName,
                                    title: 'Full name',
                                    suffixIcon: Icons.person_2_outlined,
                                  ),

                                   SSpacing.mdH,

                                  FormFieldWidget(
                                    controller: controller.email,
                                    title: 'Valid email',
                                    suffixIcon: Icons.mail_outlined,
                                  ),

                                   SSpacing.mdH,

                                   FormFieldWidget(controller: controller.phoneNumber,
                                    title: 'Phone number',
                                    suffixIcon: Icons.phone,
                                  ),

                                  SSpacing.mdH,

                                  FormFieldWidget(
                                     controller:controller.password,
                                    title: 'Strong password',
                                    suffixIcon: Icons.remove_red_eye,
                                  ),

                                ]))),
                                 
                                 
                                 SizedBox(
                      width: double.infinity,
                      child: FloatingActionButton(elevation: 0,
                          onPressed: () {
                          
                          },
                          child: Text('Next', style: Get.textTheme.titleLarge!.copyWith(color: Get.theme.colorScheme.primary)),
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
                            Get.toNamed(Routes.SIGNIN);
                          },
                          child: Text(
                            'Log In',
                            style: Get.textTheme.bodyMedium!
                                .copyWith(color: Get.theme.colorScheme.primary),
                          ),
                        )
                      ],
                    )
                        
                         
                      ]))))
    );
  }
}

















// class SignupView extends GetView<SignupController> {
//   const SignupView({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(SignupController());
//     final _formKey = GlobalKey<FormState>();

//     return Scaffold(
//        body:SafeArea(
//        child: Container(
//           height: Get.height,
//         width: Get.width,
//         padding: const EdgeInsets.symmetric(
//             horizontal: SDimension.sm, vertical: SDimension.jumbo),
//         decoration: BoxDecoration(color: Get.theme.colorScheme.onPrimaryContainer.withOpacity(0.5)),
//         child: SingleChildScrollView(
//           child: Column(crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//                   //head
//              SizedBox(
//               height: 100,
//               child: ClipOval(child: Image.asset('assets/beside-luxury-of-sport-car-blue-color-on-backdrop-of-gradient-white-color-with-shadow-of-car-on-the-ground-and-gradient-of-blue-to-white-background-free-vector.jpg',fit:BoxFit.cover,))),
                     
//                     SSpacing.lgH, 

//                     Text(
//                       'Get On Board!',style: Get.textTheme.displaySmall!.copyWith(fontWeight: FontWeight.bold),
//                     ),

//                     SSpacing.smH, 

//                     Text(
//                       'Drive For Safety',style: Get.textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
//                     ),

//                     Form(key: _formKey,
//                       child: Container(
//                       padding: const EdgeInsets.symmetric(vertical:SDimension.lg),
//                       child: Column(crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         TextFormField(
//                           controller: controller.fullName,
//                           decoration:const InputDecoration(
//                             prefixIcon: Icon(Icons.person_outline_outlined),
//                             labelText: 'Full Name',
//                             hintText: 'Full Name',
//                             border: OutlineInputBorder()
//                           ) ,
//                         ),

//                         SSpacing.lgH,

//                         TextFormField(
//                           controller: controller.email,
//                           decoration:const InputDecoration(
//                             prefixIcon: Icon(Icons.email_outlined),
//                             labelText: 'E-Mail',
//                             hintText: 'E-Mail',
//                             border: OutlineInputBorder(),
//                           ) ,
//                         ),

//                         SSpacing.lgH,

//                         TextFormField(
//                           controller: controller.phoneNumber,
//                           decoration:const InputDecoration(
//                             prefixIcon: Icon(Icons.phone),
//                             labelText: 'Phone Number',
//                             hintText: 'Phone Number',
//                             border: OutlineInputBorder(),
//                           ) ,
//                         ),

//                         SSpacing.lgH,

//                         TextFormField(controller: controller.password,
//                           decoration:const InputDecoration(
//                             prefixIcon: Icon(Icons.fingerprint),
//                             labelText: 'Password',
//                             hintText: 'Password',
//                             border: OutlineInputBorder(),
//                             suffixIcon: IconButton(onPressed: null,icon:Icon(Icons.remove_red_eye_sharp),)
//                           ) ,
//                         ),

//                         ]))),
//                          ElevatedButton(onPressed: () {
//                              if(_formKey.currentState!.validate()){
//                               SignupController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());
//                              }
//                              }, child: Text('SIGNUP',style: Get.textTheme.bodyLarge!.copyWith(color:Get.theme.colorScheme.primary,fontWeight: FontWeight.bold)) ,)


//                         ])))
//             ));
//             }
// }
