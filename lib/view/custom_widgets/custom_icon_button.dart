import 'package:devfolio/utilities/app_colors.dart';
import 'package:devfolio/utilities/responsive.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  CustomIconButton({Key key, this.icon, this.color, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: onPressed,
        onHover: (isHovering) {},
        child: CircleAvatar(
          radius: isMobile(context) ? 20 : 22,
          backgroundColor: color,
          child: FaIcon(
            icon,
            size: 18,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
