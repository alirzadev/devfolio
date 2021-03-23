import 'package:devfolio/custom_widgets/nav_bar_button.dart';
import 'package:devfolio/utilities/app_colors.dart';
import 'package:devfolio/utilities/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatelessWidget {
  final ScrollController controller;
  final double distanceToSkills;
  final double distanceToOpenSource;
  final double distanceToProject;
  final double distanceToAchievements;
  final double distanceToBlogs;
  final double distanceToTalks;
  final double distanceToContact;

  NavBar({
    Key key,
    this.controller,
    this.distanceToSkills,
    this.distanceToOpenSource,
    this.distanceToProject,
    this.distanceToAchievements,
    this.distanceToBlogs,
    this.distanceToTalks,
    this.distanceToContact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isMobile(context) ? 80 : 100,
      color: AppColors.white,
      padding: EdgeInsets.symmetric(horizontal: isMobile(context) ? 20 : 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Ali Raza',
            style: GoogleFonts.parisienne(
              color: AppColors.red,
              fontSize: isDesktop(context) ? 40 : 26,
              // fontFamily: 'Challina',
            ),
          ),
          if (isDesktop(context))
            Row(
              children: [
                NavBarButton(
                    onPressed: () {
                      scrollToPosition(distanceToSkills);
                    },
                    title: 'Skills'),
                NavBarButton(
                    onPressed: () {
                      scrollToPosition(distanceToOpenSource);
                    },
                    title: 'Open Source'),
                NavBarButton(
                    onPressed: () {
                      scrollToPosition(distanceToProject);
                    },
                    title: 'Projects'),
                // NavBarButton(
                //     onPressed: onTapAchievements, title: 'Achievements'),
                // NavBarButton(onPressed: onTapBlogs, title: 'Blogs'),
                // NavBarButton(onPressed: onTapTalks, title: 'Talks'),
                NavBarButton(
                    onPressed: () {
                      scrollToPosition(distanceToContact);
                    },
                    title: 'Contact Me'),
              ],
            ),
          if (!isDesktop(context))
            IconButton(
                icon: Icon(
                  Icons.menu,
                  color: AppColors.black54,
                ),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                }),
        ],
      ),
    );
  }

  void scrollToPosition(double distance) {
    controller.animateTo(distance,
        duration: Duration(milliseconds: 500), curve: Curves.easeIn);
  }
}
