import 'package:devfolio/utilities/app_colors.dart';
import 'package:flutter/material.dart';

class CustomEndDrawer extends StatelessWidget {
  final VoidCallback onTapSkills;
  final VoidCallback onTapOpenSource;
  final VoidCallback onTapProject;
  final VoidCallback onTapAchievements;
  final VoidCallback onTapBlogs;
  final VoidCallback onTapTalks;
  final VoidCallback onTapContact;

  CustomEndDrawer({
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
    double height = MediaQuery.of(context).size.height;

    return Container(
      width: 250,
      height: height,
      child: Drawer(
        child: Padding(
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
              DrawerButton(onPressed: onTapSkills, title: 'Skills'),
              DrawerButton(onPressed: onTapOpenSource, title: 'Open Source'),
              DrawerButton(onPressed: onTapProject, title: 'Projects'),
              DrawerButton(onPressed: onTapAchievements, title: 'Achievements'),
              DrawerButton(onPressed: onTapBlogs, title: 'Blogs'),
              DrawerButton(onPressed: onTapTalks, title: 'Talks'),
              DrawerButton(onPressed: onTapContact, title: 'Contact Me'),
            ],
          ),
        ),
      ),
    );
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
