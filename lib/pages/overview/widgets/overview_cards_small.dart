import 'package:flutter/material.dart';
import 'package:webadmin/pages/overview/widgets/info_card.dart';
import 'package:webadmin/pages/overview/widgets/info_card_small.dart';

class OverviewCardsSmallScreen extends StatelessWidget {
  const OverviewCardsSmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double cwidth = MediaQuery.of(context).size.width;
    return Container(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            title: "Rides in Progress",
            value: "7",
            onTap: () {},
          ),
          SizedBox(
            height: cwidth / 64,
          ),
          InfoCardSmall(
            title: "Package delivered",
            value: "17",
            onTap: () {},
          ),
          SizedBox(
            height: cwidth / 64,
          ),
          InfoCardSmall(
            title: "Cancelled delivery",
            value: "3",
            onTap: () {},
          ),
          SizedBox(
            height: cwidth / 64,
          ),
          InfoCardSmall(
            title: "Scheduled delivery",
            value: "7",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
