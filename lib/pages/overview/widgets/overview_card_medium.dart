import 'package:flutter/material.dart';
import 'package:webadmin/pages/overview/widgets/info_card.dart';

class OverviewCardsMediumScreen extends StatelessWidget {
  const OverviewCardsMediumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double cwidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          children: [
            InfoCard(
              title: "Rides in Progress",
              value: "7",
              onTap: () {},
              topColor: Colors.orange,
            ),
            SizedBox(
              width: cwidth / 64,
            ),
            InfoCard(
              title: "Package delivered",
              value: "17",
              onTap: () {},
              topColor: Colors.lightGreen,
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            InfoCard(
              title: "Rides in Progress",
              value: "7",
              onTap: () {},
              topColor: Colors.orange,
            ),
            SizedBox(
              width: cwidth / 64,
            ),
            InfoCard(
              title: "Package delivered",
              value: "17",
              onTap: () {},
              topColor: Colors.lightGreen,
            ),
          ],
        ),
      ],
    );
  }
}
