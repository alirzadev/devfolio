import 'package:devfolio/utilities/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SkillsIcon extends StatefulWidget {
  final IconData icon;
  final String title;

  SkillsIcon({Key key, this.icon, this.title}) : super(key: key);

  @override
  _SkillsIconState createState() => _SkillsIconState();
}

class _SkillsIconState extends State<SkillsIcon> {
  Color iconColor = AppColors.grey;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            iconColor = AppColors.red;
          });
        } else {
          setState(() {
            iconColor = AppColors.grey;
          });
        }
      },
      child: Column(
        children: [
          FaIcon(
            widget.icon,
            size: 44,
            color: iconColor,
          ),
          SizedBox(height: 10),
          Text(
            '${widget.title}',
            style: TextStyle(color: AppColors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
