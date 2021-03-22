import 'package:devfolio/custom_widgets/custom_icon_button.dart';
import 'package:devfolio/utilities/app_colors.dart';
import 'package:devfolio/utilities/responsive.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaIcons extends StatelessWidget {
  final bool isContactSection;

  SocialMediaIcons({Key key, this.isContactSection}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isContactSection
          ? MainAxisAlignment.center
          : isMobile(context)
              ? MainAxisAlignment.center
              : MainAxisAlignment.start,
      children: [
        CustomIconButton(
          onPressed: () {},
          icon: FontAwesomeIcons.github,
          color: Color(0xFF211F1F),
        ),
        CustomIconButton(
          onPressed: () {},
          icon: FontAwesomeIcons.linkedinIn,
          color: Color(0xFF0077B5),
        ),
        CustomIconButton(
          onPressed: () {},
          icon: FontAwesomeIcons.google,
          color: AppColors.red,
        ),
        CustomIconButton(
          onPressed: () {},
          icon: FontAwesomeIcons.twitter,
          color: Color(0xFF1DA1F2),
        ),
      ],
    );
  }
}
