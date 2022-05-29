import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webadmin/constants/style.dart';
import 'package:webadmin/routings/routes.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = overViewPageName.obs;
  var hoverItem = "".obs;

  changeActiveitemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;
  isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case overViewPageName:
        return _customIcon(Icons.trending_up, itemName);
      case driversPageName:
        return _customIcon(Icons.drive_eta, itemName);
      case clientsPageName:
        return _customIcon(Icons.people_alt_outlined, itemName);
      case authenticationPageName:
        return _customIcon(Icons.exit_to_app, itemName);

      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) {
      return Icon(
        icon,
        size: 22,
        color: dark,
      );
    }
    return Icon(
      icon,
      color: isHovering(itemName) ? dark : lightGrey,
    );
  }
}
