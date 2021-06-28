import 'package:devfolio/utilities/app_colors.dart';
import 'package:devfolio/utilities/responsive.dart';
import 'package:devfolio/view/custom_widgets/github_repo_card.dart';
import 'package:flutter/material.dart';

class OpenSourceSection extends StatefulWidget {
  @override
  _OpenSourceSectionState createState() => _OpenSourceSectionState();
}

class _OpenSourceSectionState extends State<OpenSourceSection> {
  final List _githubProjects = [
    {
      'repoName': 'DevFolio',
      'repoDescription': 'Responsive, robust, reusable devfolio built with flutter',
      'language': 'Dart',
      'framework': 'Flutter',
      'repoUrl': 'https://github.com/alirzadev/Dev-Folio',
    },
    {
      'repoName': 'Klime',
      'repoDescription': 'A weather forecast app, uses OpenWeatherMap Api',
      'language': 'Dart',
      'framework': 'Flutter',
      'repoUrl': 'https://github.com/alirzadev/klime',
    },
    {
      'repoName': 'BMI Calculator',
      'repoDescription': 'A simple bmi calculator with Neumorphic UI',
      'language': 'Dart',
      'framework': 'Flutter',
      'repoUrl': 'https://github.com/alirzadev/BMI-Calculator',
    },
    {
      'repoName': 'Lamp Store',
      'repoDescription': 'Two pages Minimalistic UI design of an ecom app ',
      'language': 'Dart',
      'framework': 'Flutter',
      'repoUrl': 'https://github.com/alirzadev/Lamp-Store',
    },
    {
      'repoName': 'Design-102',
      'repoDescription': 'Cool, minimalistic sliding screens UI for HacktoberFest\'20',
      'language': 'Dart',
      'framework': 'Flutter',
      'repoUrl': 'https://github.com/alirzadev/flutter-projects/tree/master/design_102',
    },
  ];

  List<Widget> widgets = [];

  List<Widget> createWidgets() {
    List<Widget> temp = [];
    for (int i = 0; i < _githubProjects.length; i++) {
      temp.add(
        GithubRepoCard(repos: _githubProjects[i]),
      );
    }
    return temp;
  }

  @override
  void initState() {
    super.initState();
    widgets = createWidgets();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: !isMobile(context)
            ? isDesktop(context)
                ? 80
                : 40
            : 15,
        vertical: 50,
      ),
      child: Column(
        crossAxisAlignment: isMobile(context) ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          if (!isMobile(context))
            Text(
              'Open Source',
              style: TextStyle(
                color: AppColors.white,
                letterSpacing: -2,
                fontSize: isDesktop(context) ? 52 : 32,
              ),
            ),
          if (isMobile(context))
            Center(
              child: Text(
                'Open Source',
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
              'Some GitHub repositories of Flutter projects.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.white.withOpacity(0.5),
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: isDesktop(context) ? 55 : 45),
          Center(
            child: Wrap(
              runSpacing: !isMobile(context) ? 25.0 : 15.0,
              children: widgets,
            ),
          ),
        ],
      ),
    );
  }
}
