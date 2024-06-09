import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormFieldWidget extends StatelessWidget {
  const FormFieldWidget({
    super.key,
    required this.title,
    required this.suffixIcon,
    required this.controller,
  });

  final String title;
  final IconData suffixIcon;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintText: title,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          suffixIcon: Icon(
            suffixIcon,
          )),
    );
  }
}



class ForgetWidget extends StatelessWidget {
    const ForgetWidget({
    super.key,required this.title,
    required this.subtitle,
    required this.iconData,
  });

  final String title;
  final String subtitle;
  final IconData iconData;
   


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Icon(iconData,size: 45,),
        Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: Get.textTheme.bodyMedium,),
            Text(subtitle,style: Get.textTheme.bodyMedium,)
          ],
        )
      ],
    );
  }
}