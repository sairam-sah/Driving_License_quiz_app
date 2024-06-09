


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../core/values/s_dimension.dart';
import '../../../core/values/s_spacing.dart';
import 'widget/study_widget.dart';

class CourseMaterialView extends StatefulWidget {
  const CourseMaterialView({super.key});

  @override
  State<CourseMaterialView> createState() => _CourseMaterialViewState();
}

class _CourseMaterialViewState extends State<CourseMaterialView> {
  final videoURL = "https://youtu.be/N42ZiuvmOOs?si=aSRCUyNfmuMzLWVY";

  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoURL);

    _controller = YoutubePlayerController(
        initialVideoId: videoID!,
        flags: const YoutubePlayerFlags(autoPlay: false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.chevron_left,
                            color: Get.theme.colorScheme.onPrimary,
                          ),
                        ),

                        const SizedBox(width: 100),

                        Text('Study Course',
                            textAlign: TextAlign.center,
                            style: Get.textTheme.bodyLarge!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Get.theme.colorScheme.onPrimary)),
                      ])),

              Container(
                  height: 550,
                  width: Get.width,
                  margin: const EdgeInsets.symmetric(),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Get.theme.colorScheme.onPrimaryContainer),
                  padding: const EdgeInsets.symmetric(
                      horizontal: SDimension.md, vertical: SDimension.jumbo),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        YoutubePlayer(
                          controller: _controller,
                          showVideoProgressIndicator: true,
                          onReady: () => debugPrint('Ready'),
                          bottomActions: [
                            CurrentPosition(),
                            ProgressBar(
                              isExpanded: true,
                              colors: ProgressBarColors(
                                  playedColor: Get.theme.colorScheme.primary,
                                  handleColor: Get.theme.colorScheme.secondary),
                            ),
                            const PlaybackSpeedButton()
                          ],
                        ),

                        SSpacing.mdH,

                          Container(
                              height: 90,
                              width: Get.width,
                              padding: const EdgeInsets.all(SDimension.md),
                              decoration: BoxDecoration(
                                  color: Get.theme.colorScheme.onPrimary,
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Column(
                                children: [
                                  StudyWidget(
                                    title: 'Driving On Busy Main Roads\nDriving Lession-#2',
                                    subtitle: '20 min',
                                    imageUrl: 'assets/pexels-photo.png',
                                  ),
                                ],
                              ),
                            ),
                            
                               Container(
                              height: 90,
                              width: Get.width,
                              padding: const EdgeInsets.all(SDimension.md),
                              decoration: BoxDecoration(
                                  color: Get.theme.colorScheme.onPrimary,
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Column(
                                children: [
                                  StudyWidget(
                                    title: 'To Turn Right At Junction\nDriving Lession-#3',
                                    subtitle: '20 min',
                                    imageUrl: 'assets/image.png',
                                  ),
                                ],
                              ),
                            ),
                             
                             
                        
                      ]))
            ]))));
  }
}
