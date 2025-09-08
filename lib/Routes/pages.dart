//import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/bindings/calculator_binding.dart';
import 'package:flutter_application_1/bindings/football_binding.dart';
import 'package:flutter_application_1/bindings/fotball_edit_binding.dart';
import 'package:flutter_application_1/frangment/history_fragment.dart';
import 'package:flutter_application_1/frangment/home_frangment.dart';
import 'package:flutter_application_1/frangment/profile_frangment.dart';
import 'package:flutter_application_1/pages/HomePage.dart';
import 'package:flutter_application_1/pages/calculator_page.dart';
import 'package:flutter_application_1/pages/football_add_pages.dart';
import 'package:flutter_application_1/pages/football_edit_pages.dart';
import 'package:flutter_application_1/pages/football_page.dart';
import 'package:flutter_application_1/pages/profile_page.dart';
import 'package:flutter_application_1/Routes/routes.dart';
import 'package:get/get.dart';

class AppPages{
  //list atau array yang isinya kumpulan page kita
  static final pages = [
    GetPage(name: AppRoutes.mainmenu, page: ()=> HomePage()),
    GetPage(name: AppRoutes.calculator, page: ()=> CalculatorPage() ,binding: CalculatorBinding() ),//memanggil binding
    GetPage(name: AppRoutes.footballplayers, page: ()=> FootballPages(), binding: FootballBinding()),
    GetPage(name: AppRoutes.footballeditplayers, page: ()=> FootballEditPages(), binding: FotballEditBinding()),
    GetPage(name: AppRoutes.footballaddplayers, page: ()=> FootballAddPages()),
    GetPage(name: AppRoutes.profile, page: ()=> ProfilePage()),
    GetPage(name: AppRoutes.HistoryFragment, page: ()=> HistoryFragment()),
    GetPage(name: AppRoutes.HomeFrangment, page: ()=> HomeFrangment()), 
    GetPage(name: AppRoutes.ProfileFrangment, page: ()=> ProfileFrangment()),
  ];
}


