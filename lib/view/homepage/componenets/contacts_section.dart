import 'package:devfolio/utilities/app_colors.dart';
import 'package:devfolio/utilities/responsive.dart';
import 'package:devfolio/view/homepage/componenets/social_media_icons.dart';
import 'package:flutter/material.dart';

class ContactsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop(context) ? 80 : 40,
        vertical: 50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Contact Me',
            style: TextStyle(
              color: AppColors.black,
              letterSpacing: -2,
              fontSize: isDesktop(context) ? 52 : 32,
            ),
          ),
          SizedBox(height: isMobile(context) ? 10 : 20),
          Container(
            child: Text(
              'DISCUSS A PROJECT OR JUST WANT TO SAY HI? MY INBOX IS OPEN FOR ALL.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.black54,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: isMobile(context) ? 20 : 30),
          Text(
            '+92-3317402528',
            style: TextStyle(
              color: AppColors.black54,
              fontSize: 16,
            ),
          ),
          SizedBox(height: isMobile(context) ? 20 : 30),
          Text(
            'mraliryu@gmail.com',
            style: TextStyle(
              color: AppColors.black54,
              fontSize: 16,
            ),
          ),
          SizedBox(height: isMobile(context) ? 20 : 30),
          SocialMediaIcons(isContactSection: true),
          SizedBox(height: isMobile(context) ? 30 : 40),
          Container(
            child: Text(
              'Made with Flutter 💙 by Ali Raza',
              style: TextStyle(
                color: AppColors.black54,
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(height: isMobile(context) ? 10 : 20),
          InkWell(
            onTap: () {},
            child: Text(
              'Theme by Saad Pasta',
              style: TextStyle(
                color: AppColors.red.withOpacity(.75),
                fontSize: 14,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
