import 'package:flutter/material.dart';

class FormFieldWidget extends StatelessWidget {
  const FormFieldWidget({
    super.key,
    required this.title,
    required this.suffixIcon,
    required this.controller
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
          border: const OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(15))),
          suffixIcon: Icon(
            suffixIcon,
          )),
    );
  }
}