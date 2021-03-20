import 'package:devfolio/utilities/app_colors.dart';
import 'package:devfolio/utilities/responsive.dart';
import 'package:devfolio/view/homepage/componenets/nav_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey,
      body: Container(
        child: Column(
          children: [
            if (isDesktop(context))
              NavBar(
                onTapSkills: () {},
                onTapOpenSource: () {},
                onTapProject: () {},
                onTapAchievements: () {},
                onTapBlogs: () {},
                onTapTalks: () {},
                onTapContact: () {},
              ),
          ],
        ),
      ),
    );
  }
}
