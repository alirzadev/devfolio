import 'package:devfolio/utilities/app_colors.dart';
import 'package:devfolio/view/homepage/componenets/custom_end_drawer.dart';
import 'package:devfolio/view/homepage/componenets/intro_section.dart';
import 'package:devfolio/view/homepage/componenets/nav_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.white,
      //END-DRAWER..............................................................
      endDrawer: CustomEndDrawer(
        onTapSkills: () {},
        onTapOpenSource: () {},
        onTapProject: () {},
        onTapAchievements: () {},
        onTapBlogs: () {},
        onTapTalks: () {},
        onTapContact: () {},
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              //NAVBAR..........................................................
              NavBar(
                onTapSkills: () {},
                onTapOpenSource: () {},
                onTapProject: () {},
                onTapAchievements: () {},
                onTapBlogs: () {},
                onTapTalks: () {},
                onTapContact: () {},
              ),
              //INTRO-SECTION...................................................
              IntroSection(),
            ],
          ),
        ),
      ),
    );
  }
}
