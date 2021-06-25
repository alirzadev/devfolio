import 'package:devfolio/utilities/app_colors.dart';
import 'package:devfolio/utilities/responsive.dart';
import 'package:devfolio/view/custom_widgets/project_card.dart';
import 'package:flutter/material.dart';

class ProjectsSection extends StatefulWidget {
  ProjectsSection({Key key}) : super(key: key);

  @override
  _ProjectsSectionState createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  double endRadius = 0;
  double elevation = 2.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: !isMobile(context) ? 80 : 15,
        vertical: 50,
      ),
      child: Column(
        crossAxisAlignment: isMobile(context) ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          if (!isMobile(context))
            Text(
              'Projects',
              style: TextStyle(
                color: AppColors.black,
                letterSpacing: -2,
                fontSize: isDesktop(context) ? 52 : 32,
              ),
            ),
          if (isMobile(context))
            Center(
              child: Text(
                'Projects',
                style: TextStyle(
                  color: AppColors.black,
                  letterSpacing: -1,
                  fontSize: isDesktop(context) ? 52 : 32,
                ),
              ),
            ),
          SizedBox(height: isMobile(context) ? 5 : 15),
          Container(
            child: Text(
              'Flutter projects published on Play Store.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.black54,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: isDesktop(context) ? 55 : 45),
          if (!isMobile(context))
            Row(
              children: [
                ProductCard(
                  url: 'https://play.google.com/store/apps/details?id=com.flutter.klime',
                  image: 'assets/images/klimeAppLogo.png',
                ),
              ],
            ),
          if (isMobile(context))
            Column(
              children: [
                ProductCard(
                  url: 'https://play.google.com/store/apps/details?id=com.flutter.klime',
                  image: 'assets/images/klimeAppLogo.png',
                ),
              ],
            ),
        ],
      ),
    );
  }
}
