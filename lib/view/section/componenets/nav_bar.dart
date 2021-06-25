import 'package:devfolio/utilities/app_colors.dart';
import 'package:devfolio/utilities/responsive.dart';
import 'package:devfolio/view/custom_widgets/nav_bar_button.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class NavBar extends StatelessWidget {
  final ItemScrollController controller;
  NavBar({Key key, @required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isMobile(context) ? 80 : 100,
      color: AppColors.black,
      padding: EdgeInsets.symmetric(horizontal: isMobile(context) ? 20 : 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              text: '<',
              style: TextStyle(
                color: AppColors.red,
                fontSize: isDesktop(context) ? 32 : 22,
                fontWeight: FontWeight.w400,
                fontFamily: 'Montserrat',
              ),
              children: [
                TextSpan(text: 'Ali Raza', style: TextStyle(fontFamily: 'Agustina', fontWeight: FontWeight.normal)),
                TextSpan(text: ' />'),
              ],
            ),
          ),
          if (isDesktop(context))
            Row(
              children: [
                NavBarButton(
                    onPressed: () {
                      scrollToIndex(2);
                    },
                    title: 'Skills'),
                NavBarButton(
                    onPressed: () {
                      scrollToIndex(3);
                    },
                    title: 'Open Source'),
                NavBarButton(
                    onPressed: () {
                      scrollToIndex(4);
                    },
                    title: 'Projects'),
                // NavBarButton(
                //     onPressed: onTapAchievements, title: 'Achievements'),
                // NavBarButton(onPressed: onTapBlogs, title: 'Blogs'),
                // NavBarButton(onPressed: onTapTalks, title: 'Talks'),
                NavBarButton(
                    onPressed: () {
                      scrollToIndex(5);
                    },
                    title: 'Contact Me'),
              ],
            ),
          if (!isDesktop(context))
            IconButton(
                icon: Icon(
                  Icons.menu,
                  color: AppColors.white,
                ),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                }),
        ],
      ),
    );
  }

  void scrollToIndex(int index) {
    controller.scrollTo(index: index, duration: Duration(seconds: 1));
  }
}
