import 'package:flutter/material.dart';
import 'package:my_first_web_app/views/home/home_content_desktop.dart';
import 'package:my_first_web_app/views/home/home_content_mobile.dart';
import 'package:my_first_web_app/widgets/centered_view/centered_view.dart';
import 'package:my_first_web_app/widgets/navigation_bar/navigation_bar.dart';
import 'package:my_first_web_app/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.isMobile ? const MyNavigationDrawer() : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              const MyNavigationBar(),
              Expanded(
                child: ScreenTypeLayout.builder(
                  mobile: (context) => const HomeContentMobile(),
                  tablet: (context) => const HomeContentDesktop(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
