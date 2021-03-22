import 'package:devfolio/custom_widgets/nav_bar_button.dart';
import 'package:devfolio/utilities/app_colors.dart';
import 'package:devfolio/utilities/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatelessWidget {
  final VoidCallback onTapSkills;
  final VoidCallback onTapOpenSource;
  final VoidCallback onTapProject;
  final VoidCallback onTapAchievements;
  final VoidCallback onTapBlogs;
  final VoidCallback onTapTalks;
  final VoidCallback onTapContact;

  NavBar({
    Key key,
    this.onTapSkills,
    this.onTapOpenSource,
    this.onTapProject,
    this.onTapAchievements,
    this.onTapBlogs,
    this.onTapTalks,
    this.onTapContact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: AppColors.white,
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Ali Raza',
            style: GoogleFonts.parisienne(
              color: AppColors.red,
              fontSize: isDesktop(context) ? 40 : 28,
              // fontFamily: 'Challina',
            ),
          ),
          if (isDesktop(context))
            Row(
              children: [
                NavBarButton(onPressed: onTapSkills, title: 'Skills'),
                NavBarButton(onPressed: onTapOpenSource, title: 'Open Source'),
                NavBarButton(onPressed: onTapProject, title: 'Projects'),
                // NavBarButton(
                //     onPressed: onTapAchievements, title: 'Achievements'),
                // NavBarButton(onPressed: onTapBlogs, title: 'Blogs'),
                // NavBarButton(onPressed: onTapTalks, title: 'Talks'),
                NavBarButton(onPressed: onTapContact, title: 'Contact Me'),
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
}
