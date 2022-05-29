import 'package:flutter/material.dart';
import 'package:webadmin/helpers/responsiveness.dart';
import 'package:webadmin/widgets/large_screen.dart';
import 'package:webadmin/widgets/side_menu.dart';
import 'package:webadmin/widgets/small_screen.dart';
import 'package:webadmin/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  SiteLayout({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      extendBodyBehindAppBar: true,
      appBar: topNavigationBar(context, scaffoldkey),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
        mediumScreen: LargeScreen(),
      ),
      drawer: const Drawer(
        child: SideMenu(),
      ),
    );
  }
}
