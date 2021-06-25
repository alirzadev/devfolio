import 'package:devfolio/controller/homepage.dart';
import 'package:devfolio/utilities/responsive.dart';
import 'package:devfolio/view/section/componenets/custom_end_drawer.dart';
import 'package:devfolio/view/section/componenets/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomepageController>(
      init: HomepageController(),
      builder: (_) => Scaffold(
        endDrawer: CustomEndDrawer(controller: _.itemScrollController),
        body: ScrollablePositionedList.builder(
          itemCount: _.sections.length,
          itemScrollController: _.itemScrollController,
          // itemPositionsListener: itemPositionsListener,
          itemBuilder: (context, index) =>
              index == 0 ? NavBar(controller: _.itemScrollController) : _.sections[index]['widget'],
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(right: 10.0, bottom: 10.0),
          child: IconButton(
            onPressed: () {
              _.itemScrollController.scrollTo(index: 0, duration: Duration(seconds: 1));
            },
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: Icon(Icons.arrow_circle_up, size: 40.0, color: isMobile(context) ? Colors.white12 : Colors.white24),
          ),
        ),
      ),
    );
  }
}
