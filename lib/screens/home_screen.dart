import 'package:flutter/material.dart';
import 'package:yumee/Notifications/notificationServices.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // NotificationServices notificationServices = NotificationServices();

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   notificationServices.requestNotificationPermission();
  //   //  notificationServices.isTokenRefresh();
  //   notificationServices.getDeviceToken().then((value) {
  //     print("${value}");
  //   });
  //   notificationServices.firebaseInit(context);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile();
        },
      ),
    );
  }
}
