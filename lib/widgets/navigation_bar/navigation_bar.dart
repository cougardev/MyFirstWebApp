import 'package:flutter/material.dart';
import 'package:my_first_web_app/widgets/navigation_bar/navigation_bar_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'navigation_bar_mobile.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const NavigationBarMobile(),
      tablet: (context) => const NavigationBarTabletDesktop(),
    );
  }
}
