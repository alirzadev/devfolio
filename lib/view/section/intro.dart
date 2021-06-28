import 'package:devfolio/utilities/app_colors.dart';
import 'package:devfolio/utilities/responsive.dart';
import 'package:devfolio/view/custom_widgets/skills_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'componenets/social_media_icons.dart';

class IntroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          !isMobile(context)
              ? isDesktop(context)
                  ? 80
                  : 40
              : 15,
          10,
          !isMobile(context)
              ? isDesktop(context)
                  ? 80
                  : 40
              : 15,
          0.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: !isMobile(context) ? CrossAxisAlignment.start : CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    RichText(
                      text: TextSpan(
                        text: 'I\'m Ali Raza',
                        style: TextStyle(
                          color: AppColors.red,
                          fontSize: isDesktop(context) ? 60 : 34,
                        ),
                      ),
                    ),
                    SizedBox(height: !isDesktop(context) ? 15 : 30),
                    Padding(
                      padding: EdgeInsets.only(right: isDesktop(context) ? 0.0 : 0.0),
                      child: Text(
                        'Former Google\'s DSC Founder 🔥 | Open Source Contributor 🐥 | Flutter 💙',
                        textAlign: isMobile(context) ? TextAlign.center : TextAlign.start,
                        style: TextStyle(
                          height: isMobile(context) ? 1.3 : 1.5,
                          color: AppColors.white.withOpacity(0.65),
                          fontSize: isDesktop(context) ? 20 : 16,
                        ),
                      ),
                    ),
                    SizedBox(height: !isDesktop(context) ? 15 : 25),
                    SocialMediaIcons(isContactSection: false),
                    SizedBox(height: !isDesktop(context) ? 40 : 55),
                    Row(
                      mainAxisAlignment: !isDesktop(context) ? MainAxisAlignment.center : MainAxisAlignment.start,
                      children: [
                        CustomButton(onPressed: () {}, title: 'RESUME'),
                        SizedBox(width: !isDesktop(context) ? 15 : 25),
                        CustomButton(onPressed: () {}, title: 'CONTACT'),
                      ],
                    ),
                  ],
                ),
              ),
              if (isDesktop(context)) SizedBox(height: 30),
              if (!isMobile(context))
                Expanded(
                  child: Container(
                    // height: height * 0.7,
                    // padding: const EdgeInsets.all(20),
                    // child: Image.asset(
                    //   'assets/images/manOnTable.png',
                    //   fit: BoxFit.contain,
                    child: Lottie.asset('assets/devices01.json', repeat: true),
                  ),
                  // child: Text('Image or Illustration'),
                ),
            ],
          ),
          if (isMobile(context))
            Container(
              // width: width/3,
              // height: height * 0.3,
              // padding: const EdgeInsets.only(top: 30),
              // child: Image.asset(
              //   'assets/images/manOnTable.png',
              //   fit: BoxFit.contain,
              // ),
              // child: Text('Image or Illustration'),
              child: Lottie.asset('assets/devices01.json', repeat: true),
            ),
        ],
      ),
    );
  }
}

class IntroSectionController extends GetxController {}
