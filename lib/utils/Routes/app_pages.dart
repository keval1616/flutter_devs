




import 'package:get/get.dart';

import '../../Image_picker/image_picker.dart';
import '../../home_Page.dart';
import 'app_routes.dart';




class AppPages{
  static final pages =[
    GetPage(name: Routes.initial, page: () => Home_Page(),),
    GetPage(name: Routes.Image_picker, page: () => Image_picker(),),
    GetPage(name: Routes.home_Page, page: () => Home_Page(),),



  ];
}