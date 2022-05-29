import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webadmin/constants/controllers.dart';
import 'package:webadmin/helpers/responsiveness.dart';
import 'package:webadmin/pages/overview/widgets/overview_card_large.dart';
import 'package:webadmin/pages/overview/widgets/overview_card_medium.dart';
import 'package:webadmin/pages/overview/widgets/overview_cards_small.dart';
import 'package:webadmin/pages/overview/widgets/revenue_section_large.dart';
import 'package:webadmin/widgets/custom_text.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        Expanded(
            child: ListView(
          children: [
            if (ResponsiveWidget.isLargeScreen(context) ||
                ResponsiveWidget.isMediumScreen(context))
              if (ResponsiveWidget.isCustomSize(context))
                const OverviewCardsMediumScreen()
              else
                const OverviewCardsLargeScreen()
            else
              const OverviewCardsSmallScreen(),

              
            const RevenueSectionLarge()
          ],
        ))
      ],
    );
  }
}
