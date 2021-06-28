import 'package:devfolio/utilities/app_colors.dart';
import 'package:devfolio/utilities/responsive.dart';
import 'package:devfolio/utilities/url_launer.dart';
import 'package:flutter/material.dart';

import 'componenets/social_media_icons.dart';

class ContactsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String themeUrl = 'https://github.com/saadpasta/developerFolio';
    String devFolioUrl = 'https://github.com/alirzadev/Dev-Folio';

    return Container(
      padding: EdgeInsets.only(
        top: 50,
        bottom: isMobile(context) ? 20 : 50,
        left: !isMobile(context)
            ? isDesktop(context)
                ? 80
                : 40
            : 15,
        right: !isMobile(context)
            ? isDesktop(context)
                ? 80
                : 40
            : 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Contact Me',
            style: TextStyle(
              color: AppColors.white,
              letterSpacing: -2,
              fontSize: isDesktop(context) ? 52 : 32,
            ),
          ),
          SizedBox(height: isMobile(context) ? 5 : 15),
          Container(
            child: Text(
              'Discuss a project or just want to say hi? My inbox is open for all.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.white.withOpacity(0.5),
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: isMobile(context) ? 20 : 30),
          Text(
            '+92-3317402528',
            style: TextStyle(
              color: AppColors.white.withOpacity(0.75),
              fontSize: 16,
            ),
          ),
          SizedBox(height: isMobile(context) ? 20 : 30),
          Text(
            'mraliryu@gmail.com',
            style: TextStyle(
              color: AppColors.white.withOpacity(0.75),
              fontSize: 16,
            ),
          ),
          SizedBox(height: isMobile(context) ? 20 : 30),
          SocialMediaIcons(isContactSection: true),
          SizedBox(height: isMobile(context) ? 35 : 45),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Made with ',
                  style: TextStyle(
                    color: AppColors.white.withOpacity(0.75),
                    fontSize: 14,
                  ),
                ),
                InkWell(
                  onTap: () {
                    UrlLauncher(url: devFolioUrl).launchUrl();
                  },
                  child: Text(
                    'Flutter ',
                    style: TextStyle(
                      color: AppColors.red.withOpacity(.75),
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                Text(
                  '💙 by Ali Raza',
                  style: TextStyle(
                    color: AppColors.white.withOpacity(0.75),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: isMobile(context) ? 10 : 20),
          InkWell(
            onTap: () {
              UrlLauncher(url: themeUrl).launchUrl();
            },
            child: Text(
              'Theme by Saad Pasta',
              style: TextStyle(
                color: AppColors.white.withOpacity(0.75),
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
