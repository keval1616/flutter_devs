




import 'package:get/get.dart';

import '../../Image_picker/image_picker.dart';
import '../../firebase/pages/add_student_page.dart';
import '../../firebase/pages/home_page.dart';
import '../../firebase/pages/list_student_page.dart';
import '../../firebase/pages/update_student_page.dart';
import '../../home_Page.dart';
import 'app_routes.dart';




class AppPages{
  static final pages =[
    GetPage(name: Routes.initial, page: () => Home_Page(),),
    GetPage(name: Routes.Image_picker, page: () => Image_picker(),),
    GetPage(name: Routes.home_Page, page: () => Home_Page(),),
    GetPage(name: Routes.homePage, page: () => HomePage(),),
    GetPage(name: Routes.addStudentPage, page: () => AddStudentPage(),),
    GetPage(name: Routes.listStudentPage, page: () => ListStudentPage(),),
    GetPage(name: Routes.updateStudentPage, page: () => UpdateStudentPage(id: '',),),



  ];
}