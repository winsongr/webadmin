import 'package:flutter/material.dart';
import 'package:webadmin/constants/controllers.dart';
import 'package:webadmin/routings/router.dart';
import 'package:webadmin/routings/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: overViewPageRoute,
      onGenerateRoute: generateRoute,
    );
