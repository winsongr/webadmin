import 'package:flutter/material.dart';
import 'package:webadmin/constants/style.dart';
import 'package:webadmin/widgets/custom_text.dart';

class InfoCardSmall extends StatelessWidget {
  const InfoCardSmall(
      {Key? key,
      required this.title,
      required this.value,
      this.isActive = false,
      required this.onTap})
      : super(key: key);
  final String title;
  final String value;
  final bool isActive;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          // height: 136,
          padding: const EdgeInsets.all(24),
          // alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            // boxShadow: [
            //   BoxShadow(
            //       offset: const Offset(0, 6),
            //       color: lightGrey.withOpacity(.1),
            //       blurRadius: 12),
            // ],
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: isActive ? active : lightGrey, width: .5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CustomText(
                    text: title,
                    size: 24,
                    weight: FontWeight.w300,
                    color: isActive ? active : lightGrey,
                  ),
                  CustomText(
                    text: value,
                    size: 24,
                    weight: FontWeight.w300,
                    color: isActive ? active : lightGrey,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
