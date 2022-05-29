import 'package:flutter/material.dart';
import 'package:webadmin/constants/style.dart';

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
        children: [Container()],
      ),
    );
  }
}
