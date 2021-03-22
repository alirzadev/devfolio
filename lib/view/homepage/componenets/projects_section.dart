import 'package:devfolio/custom_widgets/project_card.dart';
import 'package:devfolio/utilities/app_colors.dart';
import 'package:devfolio/utilities/responsive.dart';
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
        horizontal: isDesktop(context) ? 80 : 40,
        vertical: 50,
      ),
      child: Column(
        crossAxisAlignment: isMobile(context)
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
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
          SizedBox(height: isDesktop(context) ? 40 : 30),
          if (!isMobile(context))
            Row(
              children: [
                ProductCard(url: ''),
              ],
            ),
          if (isMobile(context))
            Column(
              children: [
                ProductCard(url: ''),
              ],
            ),
        ],
      ),
    );
  }
}
