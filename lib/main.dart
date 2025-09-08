import 'package:flutter/material.dart';
import 'package:flutter_application_1/Routes/pages.dart';
import 'package:flutter_application_1/Routes/routes.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'hu tao',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: AppRoutes.mainmenu,
      getPages: AppPages.pages,
    );
  }
}