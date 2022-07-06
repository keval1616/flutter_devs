import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'home_Page.dart';

class Local_Notification extends StatefulWidget {
  const Local_Notification({Key? key}) : super(key: key);

  @override
  State<Local_Notification> createState() => _Local_NotificationState();
}

class _Local_NotificationState extends State<Local_Notification> {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  void initstate() {
    super.initState();
    final AndroidInitializationSettings initializationSettingsAndroid =
    AndroidInitializationSettings('app_icon');
    final IOSInitializationSettings initializationSettingsIOS =
    IOSInitializationSettings(
      requestSoundPermission: true,
      requestBadgePermission: true,
      requestAlertPermission: true,
    );

    final InitializationSettings initializationSettings =
    InitializationSettings(
        android: initializationSettingsAndroid,
        iOS: initializationSettingsIOS,
        macOS: null);
     flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
    );


  }

  Future _showNotification() async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
    AndroidNotificationDetails(
        "abc", //Required for Android 8.0 or after
        "dsjd", //Required for Android 8.0 or after
        channelDescription: "dsd", //Required for Android 8.0 or after
        importance: Importance.max,
        icon: "app_icon",
        priority: Priority.high);
    var iSODetails = new IOSNotificationDetails();
     NotificationDetails platformChannelSpecifics =
    NotificationDetails(android: androidPlatformChannelSpecifics,iOS: iSODetails);
    await flutterLocalNotificationsPlugin.show(
        12345,
        "A Notification From My Application",
        "This notification was sent using Flutter Local Notifcations Package",
        platformChannelSpecifics,

        payload: 'data');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Flutter Notifications"),
          onPressed: _showNotification,
        ),
      ),
    );
  }

  Future notificationSelected(String? payload) async {
    if (payload != null) {
      debugPrint('notification payload: $payload');
    }
    await Navigator.push(
      context,
      MaterialPageRoute<void>(builder: (context) => Home_Page()),
    );
  }
}
