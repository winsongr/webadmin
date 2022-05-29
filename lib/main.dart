import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webadmin/constants/style.dart';
import 'package:webadmin/controllers/menu_controller.dart';
import 'package:webadmin/controllers/navigation_controller.dart';
import 'package:webadmin/layout.dart';

void main() {
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Admin Panel",
      theme: ThemeData(
        scaffoldBackgroundColor: light,
        primaryColor: Colors.blue,
      ),
      home: SiteLayout(),
    );
  }
}
