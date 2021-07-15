import 'package:devfolio/utilities/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class CustomEndDrawer extends StatelessWidget {
  final ItemScrollController controller;
  CustomEndDrawer({Key key, @required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      width: 250,
      height: height,
      child: Drawer(
        child: Container(
          color: AppColors.black,
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
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.clear, color: AppColors.white.withOpacity(0.75)),
                  ),
                ),
              ),
              DrawerButton(
                onPressed: () {
                  scrollToIndex(context, 2);
                },
                title: 'Skills',
              ),
              DrawerButton(
                onPressed: () {
                  scrollToIndex(context, 3);
                },
                title: 'Open Source',
              ),
              DrawerButton(
                onPressed: () {
                  scrollToIndex(context, 4);
                },
                title: 'Projects',
              ),
              // DrawerButton(onPressed: onTapAchievements, title: 'Achievements'),
              // DrawerButton(onPressed: onTapBlogs, title: 'Blogs'),
              // DrawerButton(onPressed: onTapTalks, title: 'Talks'),
              DrawerButton(
                onPressed: () {
                  scrollToIndex(context, 5);
                },
                title: 'Contact Me',
              ),
            ],
          ),
        ),
      ),
    );
  }

  void scrollToIndex(BuildContext context, int index) {
    controller.scrollTo(index: index, duration: Duration(seconds: 1));
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
      color: AppColors.black,
      textColor: AppColors.white.withOpacity(0.75),
      child: Text(
        '$title',
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
