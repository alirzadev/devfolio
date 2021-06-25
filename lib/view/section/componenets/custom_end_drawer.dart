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
                  scrollToIndex(2);
                },
                title: 'Skills',
              ),
              DrawerButton(
                onPressed: () {
                  scrollToIndex(3);
                },
                title: 'Open Source',
              ),
              DrawerButton(
                onPressed: () {
                  scrollToIndex(4);
                },
                title: 'Projects',
              ),
              // DrawerButton(onPressed: onTapAchievements, title: 'Achievements'),
              // DrawerButton(onPressed: onTapBlogs, title: 'Blogs'),
              // DrawerButton(onPressed: onTapTalks, title: 'Talks'),
              DrawerButton(
                onPressed: () {
                  scrollToIndex(5);
                },
                title: 'Contact Me',
              ),
            ],
          ),
        ),
      ),
    );
  }

  void scrollToIndex(int index) {
    controller.scrollTo(index: index, duration: Duration(seconds: 1));
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
