import 'package:flutter/material.dart';
import 'package:webadmin/widgets/large_screen.dart';
import 'package:webadmin/widgets/small_screen.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: const SmallScreen());
  }
}
