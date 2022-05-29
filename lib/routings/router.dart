import 'package:flutter/material.dart';
import 'package:webadmin/pages/clients/clients.dart';
import 'package:webadmin/pages/drivers/driver.dart';
import 'package:webadmin/pages/overview/overview.dart';
import 'package:webadmin/routings/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overViewPageName:
      return _getPageRoute(const OverViewPage());
    case driversPageName:
      return _getPageRoute(const DriversPage());
    case clientsPageName:
      return _getPageRoute(const ClientsPage());

    default:
      return _getPageRoute(const OverViewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: ((context) => child));
}
