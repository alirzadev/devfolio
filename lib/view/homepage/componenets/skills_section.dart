import 'package:devfolio/custom_widgets/skills_icon.dart';
import 'package:devfolio/utilities/app_colors.dart';
import 'package:devfolio/utilities/responsive.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SkillsSection extends StatelessWidget {
  SkillsSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(
        top: 50,
        bottom: 50,
        left: isDesktop(context) ? 60 : 40,
        right: isDesktop(context) ? 80 : 40,
      ),
      child: Column(
        children: [
          Row(
            children: [
              if (!isMobile(context))
                Expanded(
                  child: Container(
                    padding:
                        EdgeInsets.only(right: !isMobile(context) ? 20 : 0),
                    // height: height * 0.7,
                    child: Image.asset(
                      'assets/images/developerActivity.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (!isMobile(context))
                      Text(
                        'Skills',
                        style: TextStyle(
                          color: AppColors.black,
                          letterSpacing: -2,
                          fontSize: isDesktop(context) ? 52 : 32,
                        ),
                      ),
                    if (isMobile(context))
                      Center(
                        child: Text(
                          'Skills',
                          style: TextStyle(
                            color: AppColors.black,
                            letterSpacing: -1,
                            fontSize: isDesktop(context) ? 52 : 32,
                          ),
                        ),
                      ),
                    SizedBox(height: isDesktop(context) ? 40 : 30),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      alignment: WrapAlignment.center,
                      runAlignment: WrapAlignment.center,
                      spacing: 20,
                      runSpacing: 15,
                      children: [
                        SkillsIcon(
                            icon: FontAwesomeIcons.html5, title: 'HTML5'),
                        SkillsIcon(
                            icon: FontAwesomeIcons.css3Alt, title: 'CSS3'),
                        SkillsIcon(
                            icon: FontAwesomeIcons.cuttlefish, title: 'C++'),
                        SkillsIcon(icon: FontAwesomeIcons.java, title: 'Java'),
                        SkillsIcon(
                            icon: FontAwesomeIcons.python, title: 'Python'),
                        SkillsIcon(
                            icon: FontAwesomeIcons.database, title: 'MySql'),
                        SkillsIcon(
                            icon: FontAwesomeIcons.fire, title: 'Flutter'),
                        SkillsIcon(icon: FontAwesomeIcons.fire, title: 'Dart'),
                        SkillsIcon(
                            icon: FontAwesomeIcons.fire, title: 'Firebase'),
                        SkillsIcon(
                            icon: FontAwesomeIcons.github, title: 'Github'),
                        SkillsIcon(
                            icon: FontAwesomeIcons.gitlab, title: 'Gitlab'),
                      ],
                    ),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SkillsDescription(
                          description:
                              'Develop Responsive, Minimalistic UI & highly Scalable Flutter mobile apps.',
                        ),
                        SkillsDescription(
                          description:
                              'Integration of third party Apis and services such as Firebase.',
                        ),
                        SkillsDescription(
                          description:
                              'Experienced in using MVC, MVVM & Stacked Model.',
                        ),
                        SkillsDescription(
                          description:
                              'Publishing the Flutter App on Google Play Store.',
                        ),
                        SkillsDescription(
                          description: 'Write Clear, Robust & Reusable code.',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (isMobile(context))
            Container(
              padding: const EdgeInsets.only(top: 30),
              // height: height * 0.3,
              child: Image.asset(
                'assets/images/developerActivity.png',
                fit: BoxFit.contain,
              ),
              // child: Text('Image or Illustration'),
            ),
        ],
      ),
    );
  }
}

class SkillsDescription extends StatelessWidget {
  final String description;

  SkillsDescription({Key key, this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(bottom: isMobile(context) ? 5 : 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.bolt,
              size: 20,
              color: AppColors.orangeAccent.withOpacity(.75),
            ),
            Expanded(
              child: Container(
                child: Text(
                  '$description',
                  style: TextStyle(
                    color: AppColors.black54,
                    fontSize: 16,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
