
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// class NotificationServices {
//   FirebaseMessaging messaging = FirebaseMessaging.instance;
//   final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();


//   void requestNotificationPermission() async {
//     NotificationSettings settings = await messaging.requestPermission(
//         alert: true,
//         announcement: true,
//         badge: true,
//         carPlay: true,
//         criticalAlert: true,
//         provisional: true,
//         sound: true);

//     if (settings.authorizationStatus == AuthorizationStatus.authorized) {
//       print("authorised");
//     } else if (settings.authorizationStatus ==
//         AuthorizationStatus.provisional) {
//       print("Authorised");
//     } else {
//       // AppSettings.openAppSettings(type: AppSettingsType.notification);
//       print("denied");
//     }
//   }


//   void initLocalNotifications() async{
//     var androidInitialization =
//         AndroidInitializationSettings('@mipmap/ic_launcher');
//     var iosInitialization = DarwinInitializationSettings();

//     var initializationSetting = InitializationSettings(
//         android: androidInitialization, iOS: iosInitialization);
        
//   }

//   Future<String> getDeviceToken() async {
//     String? token = await messaging.getToken();

//     return token!;
//   }



//   void isTokenRefresh() async {
//     await messaging.onTokenRefresh.listen((event) {
//       event.toString();
//     });
//   }

//   void firebaseInit(context) {
//     FirebaseMessaging.onMessage.listen((message) {
//       print(message.notification!.title.toString());
//       print(message.notification!.body.toString());

//       // if (Platform.isAndroid) {
//       //   initLocalNotifications(context, message);
//       //   showNotification(message);
//       // }
//     });
//   }
// }
