import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/values/s_dimension.dart';
import '../../../core/values/s_spacing.dart';
import '../controllers/questions_controller.dart';
import 'widget/option_widget.dart';

class QuestionsView extends GetView<QuestionsController> {
  const QuestionsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      height: Get.height,
      width: Get.width,
      padding: const EdgeInsets.symmetric(
          horizontal: SDimension.sm, vertical: SDimension.jumbo),
      decoration: BoxDecoration(color: Get.theme.colorScheme.primary),
      child: SingleChildScrollView(
          child: Column(children: [
        Container(
          padding: SSpacing.lgMargin,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // head
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.chevron_left,
                  color: Get.theme.colorScheme.onPrimary,
                ),
              ),

              Text('Practice Question',
                  style: Get.textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Get.theme.colorScheme.onPrimary)),

              PopupMenuButton(
                iconColor: Get.theme.colorScheme.onPrimary,
                itemBuilder: (BuildContext context) {
                  return <PopupMenuEntry>[
                    const PopupMenuItem(
                      value: 1,
                      child: OptionView(
                        value: 1,
                        title: 'Random',
                      ),
                    ),
                    const PopupMenuItem(
                      value: 2,
                      child: OptionView(
                        value: 2,
                        title: 'Know your car',
                      ),
                    ),
                    const PopupMenuItem(
                      value: 3,
                      child: OptionView(
                        value: 2,
                        title: 'Key deiving skill',
                      ),
                    ),
                    const PopupMenuItem(
                      value: 4,
                      child: OptionView(
                        value: 2,
                        title: 'Road Signs',
                      ),
                    ),
                    // Add more PopupMenuItems as needed
                  ];
                },
              ),

            ],
          ),
        ),

        Container(
            height: 600,
            width: Get.width,
            margin: const EdgeInsets.symmetric(),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Get.theme.colorScheme.onPrimaryContainer),
            padding: const EdgeInsets.symmetric(horizontal: SDimension.md),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Container(
                    height: 200,
                    width: Get.width,
                    padding: const EdgeInsets.all(SDimension.md),
                    decoration: BoxDecoration(
                        color: Get.theme.colorScheme.onPrimary,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        const Text('What does this traffic sign mean ?'),
                        SSpacing.mdH,
                        Image.asset('assets/warning-t.png',
                            height: 100, width: 100)
                      ],
                    ),
                  ),
                  
                  buildOption(1, 'Warning for traffic light'),
                  buildOption(2, 'Crossing for pedestrian'),
                  buildOption(3, 'Warning for railroad crossing'),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            controller.checkAnswer();
                          },
                          child: const Text('Answer')),
                      SSpacing.lgW,
                      ElevatedButton(
                          onPressed: () {}, child: const Text('Next')),
                    ],
                  )
                  
                ]))
      ])),
    )));
  }
}




//  Widget buildOption(int index, String text) {
//     return InkWell(
//       onTap: () {
//         controller.setSelectedIndex(index);
//       },
//       child: Obx(() => Container(
//             height: 50,
//             width: Get.width,
//             padding: const EdgeInsets.all(SDimension.md),
//             decoration: BoxDecoration(
//               color: controller.selectedIndex==index ?Colors.green:Get.theme.colorScheme.onPrimary,
//               borderRadius: BorderRadius.circular(8),
//             ),
//             child: Text(text),
//           )),
//     );
//   }



// Container(
                  //   height: 400,
                  //   width: 200,
                  //   padding: const EdgeInsets.all(SDimension.md),
                  //   decoration: BoxDecoration(
                  //       color: Get.theme.colorScheme.onPrimary,
                  //       borderRadius: BorderRadius.circular(8)),
                  //   child: const Column(
                  //     children: [
                  //       NewWidget(
                  //         value: 1,
                  //         title: 'Random',
                  //       ),
                  //       NewWidget(
                  //         value: 1,
                  //         title: 'Know your Car',
                  //       ),
                  //       NewWidget(
                  //         value: 1,
                  //         title: 'Key driving skills',
                  //       ),
                  //       NewWidget(
                  //         value: 1,
                  //         title: 'Roads Signs',
                  //       )
                  //     ],
                  //   ),
                  // );



                  // InkWell(
                  //   onTap: (){
                  //     controller.containerColor1.value =Colors.green;

                  // },
                  //   child: Obx(() =>  Container(
                  //         height: 50,
                  //         width: Get.width,
                  //         padding: const EdgeInsets.all(SDimension.md),
                  //         decoration: BoxDecoration(
                 
                  //             color:controller.containerColor1.value,
                  //             borderRadius: BorderRadius.circular(8)),
                  //         child: const Text('Warrning for traffic light')),
                    
                    
                    
                  //   ),
                  // ),

                  // InkWell(
                  //   onTap: () {
                  //     controller.containerColor2.value=Colors.red;
                  //   },
                  //   child: Obx(() => 
                  //      Container(
                  //         height: 50,
                  //         width: Get.width,
                  //         padding: const EdgeInsets.all(SDimension.md),
                  //         decoration: BoxDecoration(
                  //             color: controller.containerColor2.value,
                  //             borderRadius: BorderRadius.circular(8)),
                  //         child: const Text('Crossing for pedestrian')),
                  //   ),
                  // ),

                  // InkWell(
                  //   onTap: () {
                  //     controller.containerColor3.value=Colors.red;
                  //   },
                  //   child: Obx(() => 
                  //      Container(
                  //         height: 50,
                  //         width: Get.width,
                  //         padding: const EdgeInsets.all(SDimension.md),
                  //         decoration: BoxDecoration(
                  //             color:controller.containerColor3.value,
                  //             borderRadius: BorderRadius.circular(8)),
                  //         child: const Text('Warrning for railroad crossing')),
                  //   ),
                  // ),