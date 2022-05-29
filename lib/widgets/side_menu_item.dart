import 'package:flutter/material.dart';
import 'package:webadmin/helpers/responsiveness.dart';
import 'package:webadmin/widgets/horizontal_menu_item.dart';
import 'package:webadmin/widgets/vertical_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  const SideMenuItem({Key? key, required this.itemName, this.onTap})
      : super(key: key);
  final String itemName;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomSize(context)) {
      return VerticalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    }
    return HorizontalMenuItem(
      itemName: itemName,
      onTap: onTap,
    );
  }
}
