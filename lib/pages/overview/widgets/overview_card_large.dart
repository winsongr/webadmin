import 'package:flutter/material.dart';
import 'package:webadmin/pages/overview/widgets/info_card.dart';

class OverviewCardsLargeScreen extends StatelessWidget {
  const OverviewCardsLargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double cwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        InfoCard(
          title: "Rides in Progress",
          value: "7",
          onTap: () {},
          topColor: Colors.orange,
        ),
        SizedBox(
          width: cwidth / 64,
        ), InfoCard(
          title: "Package delivered",
          value: "17",
          onTap: () {},
          topColor: Colors.lightGreen,
        ),
        SizedBox(
          width: cwidth / 64,
        ), InfoCard(
          title: "Cancelled delivery",
          value: "3",
          onTap: () {},
          topColor: Colors.redAccent,
        ),
        SizedBox(
          width: cwidth / 64,
        ), InfoCard(
          title: "Scheduled delivery",
          value: "7",
          onTap: () {},
        ),
        
      ],
    );
  }
}
