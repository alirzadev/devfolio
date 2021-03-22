import 'package:devfolio/custom_widgets/github_repo_card.dart';
import 'package:devfolio/utilities/app_colors.dart';
import 'package:devfolio/utilities/responsive.dart';
import 'package:flutter/material.dart';

class OpenSourceSection extends StatelessWidget {
  final List _githubProjects = [
    {
      'repoName': 'DevFolio',
      'repoDescription':
          'Responsive, robust, reusable devfolio built with flutter',
      'language': 'Dart',
      'framework': 'Flutter',
      'repoUrl': '',
    },
    {
      'repoName': 'Klime',
      'repoDescription': 'A weather forecast app, uses OpenWeatherMap Api',
      'language': 'Dart',
      'framework': 'Flutter',
      'repoUrl': '',
    },
    {
      'repoName': 'BMI Calculator',
      'repoDescription': 'A simple bmi calculator with Neumorphic UI',
      'language': 'Dart',
      'framework': 'Flutter',
      'repoUrl': '',
    },
    {
      'repoName': 'Lamp Store',
      'repoDescription': 'Two pages Minimalistic UI design of an ecom app ',
      'language': 'Dart',
      'framework': 'Flutter',
      'repoUrl': '',
    },
    {
      'repoName': 'Design-102',
      'repoDescription':
          'Cool, minimalistic sliding screens UI for HacktoberFest\'20',
      'language': 'Dart',
      'framework': 'Flutter',
      'repoUrl': '',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop(context) ? 80 : 40,
        vertical: 50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isMobile(context))
            Text(
              'Open Source',
              style: TextStyle(
                color: AppColors.black54,
                letterSpacing: -2,
                fontSize: isDesktop(context) ? 52 : 32,
              ),
            ),
          if (isMobile(context))
            Center(
              child: Text(
                'Open Source',
                style: TextStyle(
                  color: AppColors.black,
                  letterSpacing: -1,
                  fontSize: isDesktop(context) ? 52 : 32,
                ),
              ),
            ),
          SizedBox(height: isDesktop(context) ? 40 : 30),
          Container(
            height: 220,
            child: ListView.builder(
              itemCount: _githubProjects.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return GithubRepoCard(
                  name: _githubProjects[index]['repoName'],
                  description: _githubProjects[index]['repoDescription'],
                  language: _githubProjects[index]['language'],
                  framework: _githubProjects[index]['framework'],
                  repoUrl: _githubProjects[index]['repoUrl'],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
