


import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'utils/Routes/app_pages.dart';

Future<void> main() async {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
}