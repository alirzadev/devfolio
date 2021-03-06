import 'package:cached_network_image/cached_network_image.dart';
import 'package:devfolio/utilities/app_colors.dart';
import 'package:devfolio/utilities/responsive.dart';
import 'package:devfolio/view/custom_widgets/prog_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProjectsSection extends StatefulWidget {
  ProjectsSection({Key key}) : super(key: key);

  @override
  _ProjectsSectionState createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  double endRadius = 0;
  double elevation = 2.0;

  List projects = [
    {
      'img': 'https://raw.githubusercontent.com/alirzadev/devfolio/master/assets/images/stimy.png',
    },
    {
      'img': 'https://raw.githubusercontent.com/alirzadev/devfolio/master/assets/images/antiscam.png',
    },
  ];

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
                color: AppColors.white,
                letterSpacing: -2,
                fontSize: isDesktop(context) ? 52 : 32,
              ),
            ),
          if (isMobile(context))
            Center(
              child: Text(
                'Projects',
                style: TextStyle(
                  color: AppColors.white,
                  letterSpacing: -1,
                  fontSize: isDesktop(context) ? 52 : 32,
                ),
              ),
            ),
          SizedBox(height: isMobile(context) ? 5 : 15),
          Container(
            child: Text(
              'Professional Flutter projects done for clients.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.white.withOpacity(0.5),
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: isDesktop(context) ? 55 : 45),
          GridView.builder(
            primary: false,
            shrinkWrap: true,
            itemCount: projects.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: !isMobile(context) ? 3 : 1,
              childAspectRatio: 4 / 3,
              mainAxisSpacing: !isMobile(context) ? 10.0 : 25.0,
              crossAxisSpacing: 10.0,
            ),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(border: Border.all(color: AppColors.red)),
                child: CachedNetworkImage(
                  imageUrl: projects[index]['img'],
                  placeholder: (context, url) => ProgIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.image, size: 52.0, color: AppColors.red),
                ),
              );
            },
          ),
          // Row(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     ProjectCard(),
          //     // SizedBox(width: 40.0),
          //   ],
          // ),
          // if (isMobile(context))
          //   Column(
          //     children: [
          //       ProjectCard(),
          //     ],
          //   ),
        ],
      ),
    );
  }
}
