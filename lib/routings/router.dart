import 'package:flutter/material.dart';
import 'package:webadmin/pages/clients/clients.dart';
import 'package:webadmin/pages/drivers/driver.dart';
import 'package:webadmin/pages/overview/overview.dart';
import 'package:webadmin/routings/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overViewPageRoute:
      return _getPageRoute(OverViewPage());
    case driversPageRoute:
      return _getPageRoute(DriversPage());
    case clientsPageRoute:
      return _getPageRoute(ClientsPage());

    default:
      return _getPageRoute(OverViewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: ((context) => child));
}
