import 'package:devfolio/utilities/app_colors.dart';
import 'package:devfolio/utilities/responsive.dart';
import 'package:devfolio/view/homepage/componenets/social_media_icons.dart';
import 'package:flutter/material.dart';

class IntroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

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
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: !isMobile(context)
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.center,
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
                    Text(
                      'Junior Flutter Developer | Open Source Contributor | Developer Student Club Lead',
                      textAlign: isMobile(context)
                          ? TextAlign.center
                          : TextAlign.start,
                      style: TextStyle(
                        height: !isDesktop(context) ? 1.2 : 1.5,
                        color: AppColors.black54,
                        fontSize: isDesktop(context) ? 20 : 16,
                      ),
                    ),
                    SizedBox(height: !isDesktop(context) ? 15 : 25),
                    SocialMediaIcons(isContactSection: false),
                    SizedBox(height: !isDesktop(context) ? 40 : 55),
                    RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: AppColors.red),
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      ),
                      color: AppColors.white,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: !isDesktop(context) ? 14.0 : 18.0,
                          vertical: !isDesktop(context) ? 10.0 : 14.0,
                        ),
                        child: Text(
                          'RESUME',
                          style: TextStyle(
                              color: AppColors.red,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (isDesktop(context)) SizedBox(height: 30),
              if (isDesktop(context))
                Expanded(
                  child: Container(
                    // height: height * 0.7,
                    // padding: const EdgeInsets.all(20),
                    child: Image.asset(
                      'assets/images/manOnTable.png',
                      fit: BoxFit.contain,
                    ),
                    // child: Text('Image or Illustration'),
                  ),
                ),
            ],
          ),
          if (isMobile(context))
            Container(
              // width: width/3,
              // height: height * 0.3,
              padding: const EdgeInsets.only(top: 30),
              child: Image.asset(
                'assets/images/manOnTable.png',
                fit: BoxFit.contain,
              ),
              // child: Text('Image or Illustration'),
            )
        ],
      ),
    );
  }
}
