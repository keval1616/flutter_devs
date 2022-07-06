


import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:snapshot/snapshot.dart';

import 'utils/Routes/app_pages.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.light, // For iOS: (dark icons)
    statusBarIconBrightness: Brightness.dark, // For Android: (dark icons)
    // status bar color

  ));
  runApp( MyApp());
}
class MyApp extends StatelessWidget {


  final Future<FirebaseApp> _initialization = Firebase.initializeApp();


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print("somthing wrong");
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return GetMaterialApp(


              debugShowCheckedModeBanner: false,
              getPages: AppPages.pages,

              theme: ThemeData(
                // progressIndicatorTheme: ProgressIndicatorThemeData(
                //   color: ColorConstants.primaryColor
                // ),
                  primarySwatch: Colors.lightGreen),
            );
          }
          return CircularProgressIndicator();
        },
            );
  }
  }
















