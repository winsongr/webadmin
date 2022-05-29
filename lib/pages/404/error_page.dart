import 'package:flutter/material.dart';
import 'package:webadmin/widgets/custom_text.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.asset(
        "assets/image/error.png",
        width: 350,
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CustomText(
            text: "Page not Found",
            size: 24,
            weight: FontWeight.w900,
          ),
        ],
      ),
    ]);
  }
}
