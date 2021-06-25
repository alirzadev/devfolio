import 'package:devfolio/view/section/contacts_section.dart';
import 'package:devfolio/view/section/intro_section.dart';
import 'package:devfolio/view/section/projects_section.dart';
import 'package:devfolio/view/section/skills_section.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomepageController extends GetxController {
  final ItemScrollController itemScrollController = ItemScrollController();
  // final ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();

  List sections = [
    {}, // Index '0' should be left empty so navbar could be displayed in its place

    {
      'widget': IntroSection(),
      'index': 1,
    },
    {
      'widget': SkillsSection(),
      'index': 2,
    },

    {
      'widget': OpenSourceSection(),
      'index': 3,
    },
    {
      'widget': ProjectsSection(),
      'index': 4,
    },
    {
      'widget': ContactsSection(),
      'index': 5,
    },
  ];
}
