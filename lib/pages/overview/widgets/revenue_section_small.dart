import 'package:flutter/material.dart';
import 'package:webadmin/constants/style.dart';
import 'package:webadmin/pages/overview/widgets/revenue_info.dart';
import 'package:webadmin/widgets/custom_text.dart';

import 'bar_chart.dart';

class RevenueSectionSmall extends StatelessWidget {
  const RevenueSectionSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 6),
              color: lightGrey.withOpacity(.1),
              blurRadius: 12),
        ],
        border: Border.all(color: lightGrey, width: .5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Container(
            height: 260,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomText(
                  text: "Revenue Chart",
                  size: 20,
                  weight: FontWeight.bold,
                  color: lightGrey,
                ),
                SizedBox(
                  width: 600,
                  height: 200,
                  child: SimpleBarChart.withSampleData(),
                ),
              ],
            ),
          ),
          Container(
            width: 120,
            height: 1,
            color: lightGrey,
          ),
          SizedBox(
            height: 260,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: const [
                    RevenueInfo(title: "Today's revenue", amount: "23"),
                    RevenueInfo(title: "last 7days revenue", amount: "213"),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: const [
                    RevenueInfo(title: "Last 30 days", amount: "2322"),
                    RevenueInfo(title: "last 2 months", amount: "2613"),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
