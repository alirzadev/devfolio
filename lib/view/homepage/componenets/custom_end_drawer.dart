import 'package:devfolio/utilities/app_colors.dart';
import 'package:flutter/material.dart';

class CustomEndDrawer extends StatelessWidget {
  final ScrollController controller;
  final double distanceToSkills;
  final double distanceToOpenSource;
  final double distanceToProject;
  final double distanceToAchievements;
  final double distanceToBlogs;
  final double distanceToTalks;
  final double distanceToContact;

  CustomEndDrawer({
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
    double height = MediaQuery.of(context).size.height;

    return Container(
      width: 250,
      height: height,
      child: Drawer(
        child: Container(
          color: AppColors.white,
          padding: const EdgeInsets.only(right: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 100,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.clear, color: AppColors.black54),
                  ),
                ),
              ),
              DrawerButton(
                onPressed: () {
                  scrollToPosition(context, distanceToSkills);
                },
                title: 'Skills',
              ),
              DrawerButton(
                onPressed: () {
                  scrollToPosition(context, distanceToOpenSource);
                },
                title: 'Open Source',
              ),
              DrawerButton(
                onPressed: () {
                  scrollToPosition(context, distanceToProject);
                },
                title: 'Projects',
              ),
              // DrawerButton(onPressed: onTapAchievements, title: 'Achievements'),
              // DrawerButton(onPressed: onTapBlogs, title: 'Blogs'),
              // DrawerButton(onPressed: onTapTalks, title: 'Talks'),
              DrawerButton(
                onPressed: () {
                  scrollToPosition(context, distanceToContact);
                },
                title: 'Contact Me',
              ),
            ],
          ),
        ),
      ),
    );
  }

  void scrollToPosition(BuildContext context, double distance) {
    controller.animateTo(distance,
        duration: Duration(milliseconds: 500), curve: Curves.easeIn);
    Navigator.of(context).pop();
  }
}

class DrawerButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  DrawerButton({Key key, this.title, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      height: 50,
      splashColor: Colors.transparent,
      color: AppColors.white,
      textColor: AppColors.black54,
      child: Text(
        '$title',
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
