import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webadmin/constants/controllers.dart';
import 'package:webadmin/helpers/responsiveness.dart';
import 'package:webadmin/pages/drivers/widgets/drivers_table.dart';
import 'package:webadmin/widgets/custom_text.dart';

class DriversPage extends StatelessWidget {
  const DriversPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Obx(
        () => Row(
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
              child: CustomText(
                text: menuController.activeItem.value,
                size: 24,
                weight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      Expanded(child: ListView(children: const [DriversTable()]))
    ]);
  }
}
