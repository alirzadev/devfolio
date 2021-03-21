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
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop(context) ? 80 : 40,
        vertical: 50,
      ),
      child: Column(
        children: [
          Row(
            children: [
              if (!isMobile(context))
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    height: height * 0.7,
                    child: Text('Image or Illustration'),
                  ),
                ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
              padding: const EdgeInsets.all(40),
              height: height * 0.3,
              child: Text('Image or Illustration'),
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
              color: AppColors.orangeAccent.withOpacity(.5),
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
