import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webadmin/constants/style.dart';
import 'package:webadmin/controllers/menu_controller.dart';
import 'package:webadmin/controllers/navigation_controller.dart';
import 'package:webadmin/layout.dart';
import 'package:webadmin/pages/404/error_page.dart';
import 'package:webadmin/pages/authentication/authentication.dart';
import 'package:webadmin/routings/routes.dart';

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
      initialRoute: AuthenticationPageRoute,
      unknownRoute: GetPage(
          name: "/notfound",
          page: () => const PageNotFound(),
          transition: Transition.fadeIn),
      getPages: [
        GetPage(name: RootRoute, page: () => SiteLayout()),
        GetPage(
            name: AuthenticationPageRoute,
            page: () => const AuthenticationPage())
      ],
      debugShowCheckedModeBanner: false,
      title: "Admin Panel",
      theme: ThemeData(
        scaffoldBackgroundColor: light,
        primaryColor: Colors.blue,
      ),
      home: const AuthenticationPage(),
    );
  }
}
