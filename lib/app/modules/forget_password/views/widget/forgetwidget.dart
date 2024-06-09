import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class forgetWidget extends StatelessWidget {
  const forgetWidget({
    super.key,
    required this.hintText,required this.suffixIcon
  });

  final String hintText;
  final IconData suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
               decoration:InputDecoration(
                 hintText: hintText,
                 suffixIcon:Icon(suffixIcon) ,
                 border: const OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(15)))
               ) ,
             );
  }
}