import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../core/values/s_spacing.dart';

class NewWidget extends StatelessWidget {
  const NewWidget({super.key, required this.title, required this.iconData,required this.imageUrl});

  final String title;
  final IconData iconData;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Container(
            height: 45,
            width: 45,
            decoration: const BoxDecoration(
                shape: BoxShape.circle),
                child: 
            Image.asset(imageUrl,fit:BoxFit.fill,width: 35,)
          ),

          SSpacing.mdW,

          Expanded(
            child: Text(
              title,
              style: Get.textTheme.bodyMedium!.copyWith(),textAlign:TextAlign.start,
            ),
          ),

          SSpacing.mdW,
          
          Icon(
            iconData,
          )
        ],
      ),
    );
  }
}

