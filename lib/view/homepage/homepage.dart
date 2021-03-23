import 'package:devfolio/utilities/app_colors.dart';
import 'package:devfolio/view/homepage/componenets/custom_end_drawer.dart';
import 'package:devfolio/view/homepage/componenets/intro_section.dart';
import 'package:devfolio/view/homepage/componenets/nav_bar.dart';
import 'package:devfolio/view/homepage/componenets/open_source_section.dart';
import 'package:devfolio/view/homepage/componenets/projects_section.dart';
import 'package:devfolio/view/homepage/componenets/skills_section.dart';
import 'package:flutter/material.dart';

import 'componenets/contacts_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _controller.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.white,
      //END-DRAWER..............................................................
      endDrawer: CustomEndDrawer(
        controller: _controller,
        distanceToSkills: width * 2.2,
        distanceToOpenSource: width * 4.7,
        distanceToProject: width * 5.8,
        // distanceToAchievements: 0,
        // distanceToBlogs: 0,
        // distanceToTalks: 0,
        distanceToContact: width * 7,
      ),
      body: SingleChildScrollView(
        controller: _controller,
        child: Container(
          child: Column(
            children: [
              //NAVBAR..........................................................
              NavBar(
                controller: _controller,
                distanceToSkills: width / 2,
                distanceToOpenSource: width * 0.95,
                distanceToProject: width * 1.3,
                // distanceToAchievements: 0,
                // distanceToBlogs: 0,
                // distanceToTalks: 0,
                distanceToContact: width * 1.5,
              ),
              //INTRO-SECTION...................................................
              IntroSection(),
              //SKILLS-SECTION..................................................
              SkillsSection(),
              //OPEN-SOURCE-SECTION............................................
              OpenSourceSection(),
              //PROJECT-SECTION.................................................
              ProjectsSection(),
              //CONTACT-ME-SECTION.................................................
              ContactsSection(),
            ],
          ),
        ),
      ),
    );
  }
}
