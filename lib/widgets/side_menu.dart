import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webadmin/constants/controllers.dart';
import 'package:webadmin/constants/style.dart';
import 'package:webadmin/helpers/responsiveness.dart';
import 'package:webadmin/pages/authentication/authentication.dart';
import 'package:webadmin/routings/routes.dart';
import 'package:webadmin/widgets/custom_text.dart';
import 'package:webadmin/widgets/side_menu_item.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double cwidth = MediaQuery.of(context).size.width;

    return Container(
      color: light,
      child: ListView(children: [
        if (ResponsiveWidget.isSmallScreen(context))
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SizedBox(
                    width: cwidth / 48,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Icon(Icons.abc_rounded),
                  ),
                  Flexible(
                    child: CustomText(
                      text: "Dash",
                      color: active,
                      size: 20,
                      weight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: cwidth / 48,
                  ),
                ],
              ),
            ],
          ),
        Divider(
          color: lightGrey.withOpacity(.1),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: sideMenuItems
              .map(
                (item) => SideMenuItem(
                  itemName: item.name,
                  onTap: () {
                    if (item.route == authenticationPageName) {
                      menuController.changeActiveitemTo(overViewPageName);
                      Get.offAllNamed(AuthenticationPageRoute);
                    }
                    if (!menuController.isActive(item.name)) {
                      menuController.changeActiveitemTo(item.name);
                      if (ResponsiveWidget.isSmallScreen(context)) {
                        Get.back();
                        navigationController.navigateTo(item.route);
                      }
                    }
                  },
                ),
              )
              .toList(),
        )
      ]),
    );
  }
}
