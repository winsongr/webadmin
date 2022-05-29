import 'package:flutter/material.dart';
import 'package:webadmin/constants/style.dart';

class RevenueInfo extends StatelessWidget {
  const RevenueInfo({Key? key, required this.title, required this.amount})
      : super(key: key);
  final String title;
  final String amount;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: "$title\n\n",
              style: TextStyle(color: lightGrey, fontSize: 16),
            ),
            TextSpan(
              text: "\u{20B9} $amount",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
