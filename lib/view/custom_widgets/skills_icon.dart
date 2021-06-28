import 'package:devfolio/utilities/app_colors.dart';
import 'package:devfolio/utilities/responsive.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color btnColor;
  final Color textColor;
  final bool lessPadding;
  final VoidCallback onPressed;

  const CustomButton({
    Key key,
    @required this.title,
    this.btnColor = Colors.transparent,
    this.textColor = AppColors.red,
    this.lessPadding = false,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: lessPadding ? 0.0 : 1.0,
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: textColor),
        // borderRadius: BorderRadius.all(Radius.circular(50.0)),
      ),
      color: btnColor,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: lessPadding
              ? 5.0
              : !isDesktop(context)
                  ? 14.0
                  : 18.0,
          vertical: lessPadding
              ? 7.5
              : !isDesktop(context)
                  ? 10.0
                  : 14.0,
        ),
        child: Text(
          title,
          style: TextStyle(color: textColor, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}

class SkillsIcon extends StatefulWidget {
  final IconData icon;
  final String title;

  SkillsIcon({Key key, this.icon, this.title}) : super(key: key);

  @override
  _SkillsIconState createState() => _SkillsIconState();
}

class _SkillsIconState extends State<SkillsIcon> {
  Color iconColor = AppColors.white.withOpacity(0.75);

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
            iconColor = AppColors.white.withOpacity(0.75);
          });
        }
      },
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
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
            style: TextStyle(color: AppColors.white.withOpacity(0.75), fontSize: 12),
          ),
        ],
      ),
    );
  }
}
