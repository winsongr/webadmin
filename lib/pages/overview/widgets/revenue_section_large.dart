import 'package:flutter/material.dart';
import 'package:webadmin/constants/style.dart';
import 'package:webadmin/pages/overview/widgets/bar_chart.dart';
import 'package:webadmin/pages/overview/widgets/revenue_info.dart';
import 'package:webadmin/widgets/custom_text.dart';

class RevenueSectionLarge extends StatelessWidget {
  const RevenueSectionLarge({
    Key? key,
  }) : super(key: key);
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
        borderRadius: BorderRadius.circular(8),),

                child: Row(
                  children: [
                    Expanded(
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
                              child: SimpleBarChart.withSampleData()),
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 120,
                      color: lightGrey,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: const [
                              RevenueInfo(
                                title: "Toda\'s revenue",
                                amount: "230",
                              ),
                              RevenueInfo(
                                title: "Last 7 days",
                                amount: "1,100",
                              ),
                            ],
                          ),
                          const SizedBox(height: 30,),
                          Row(
                            children: const [
                              RevenueInfo(
                                title: "Last 30 days",
                                amount: "3,230",
                              ),
                              RevenueInfo(
                                title: "Last 12 months",
                                amount: "11,300",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
  }
}