




import 'package:get/get.dart';

import '../../Image_picker/image_picker.dart';
import 'app_routes.dart';




class AppPages{
  static final pages =[
    GetPage(name: Routes.initial, page: () => Image_picker(),),
    GetPage(name: Routes.Image_picker, page: () => Image_picker(),),



  ];
}