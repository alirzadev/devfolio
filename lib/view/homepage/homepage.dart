import 'package:devfolio/utilities/app_colors.dart';
import 'package:devfolio/view/homepage/componenets/custom_end_drawer.dart';
import 'package:devfolio/view/homepage/componenets/nav_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey,
      endDrawer: CustomEndDrawer(
        onTapSkills: () {},
        onTapOpenSource: () {},
        onTapProject: () {},
        onTapAchievements: () {},
        onTapBlogs: () {},
        onTapTalks: () {},
        onTapContact: () {},
      ),
      body: Container(
        child: Column(
          children: [
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
