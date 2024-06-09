import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/values/s_spacing.dart';

// Assuming you are using GetX for navigation and state management

class WarningSignsView extends StatefulWidget {
  const WarningSignsView({super.key});

  @override
  State<WarningSignsView> createState() => _WarningSignsViewState();
}

class _WarningSignsViewState extends State<WarningSignsView> {
  bool isExpanded = false; // To track if container is expanded or not
  int selectedIndex = -1; // To track which container is expanded

  void toggleExpand(int index) {
    setState(() {
      if (selectedIndex == index) {
        isExpanded = !isExpanded;
      } else {
        isExpanded = true;
        selectedIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        color: Get.theme.colorScheme.primary, // You can customize the color
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.chevron_left,
                      color: Get.theme.colorScheme
                          .onPrimary, // Change color as needed
                    ),
                  ),
                  const SizedBox(width: 100),
                  Text('Warning Signs',
                      textAlign: TextAlign.center,
                      style: Get.textTheme.bodyLarge!.copyWith(
                        color: Get.theme.colorScheme.onPrimary,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),

              SSpacing.lgH,

              Container(
                height: isExpanded
                    ? 400
                    : 74, // Adjust height based on expansion state
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color:
                      Get.theme.colorScheme.onPrimary, // Change color as needed
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    InkWell(
                      onTap: () {
                        toggleExpand(0);
                      },
                      child: Text('Railway crossing with a barrier',
                          style: Get.textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                          )),
                    ),

                    if (isExpanded && selectedIndex == 0)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SSpacing.mdH,
                          Text(
                              'A level crossing is an intersection where a railway line crosses a road, path, or (in rare situations) airport runway, at the same level, as opposed to the railway line crossing over or under using an overpass or tunnel. The term also applies when a light rail line with separate right-of-way ..',
                              style: Get.textTheme.bodyMedium),
                        ],
                      ),
                  ],
                ),
              ),
              // Repeat the above Container widget for other items
            ],
          ),
        ),
      ),
    );
  }
}