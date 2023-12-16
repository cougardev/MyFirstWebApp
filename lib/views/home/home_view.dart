import 'package:flutter/material.dart';
import 'package:my_first_web_app/widgets/call_to_action/call_to_action.dart';
import 'package:my_first_web_app/widgets/centered_view/centered_view.dart';
import 'package:my_first_web_app/widgets/course_details/course_details.dart';
import 'package:my_first_web_app/widgets/navigation_bar/navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: <Widget>[
            MyNavigationBar(),
            Expanded(
              child: Row(
                children: [
                  CourseDetails(),
                  Expanded(
                      child: Center(
                    child: CallToAction(title: 'Join Course'),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
