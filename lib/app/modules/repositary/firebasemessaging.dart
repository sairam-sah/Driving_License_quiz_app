// ignore_for_file: avoid_print

import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseApi{
  final firebaseMessaging =FirebaseMessaging.instance;
  Future<void> initNotification()async{
  await firebaseMessaging.requestPermission();
  final fCMToken = await firebaseMessaging.getToken();
  print('Token: $fCMToken');
  FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
  }
}


  Future<void>handleBackgroundMessage(RemoteMessage message)async{
    print('Title:${message.notification?.title}');
       print('Body:${message.notification?.body}');
          print('Payload:${message.data}');
  }