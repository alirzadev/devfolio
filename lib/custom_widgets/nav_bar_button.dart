import 'package:devfolio/utilities/app_colors.dart';
import 'package:flutter/material.dart';

class NavBarButton extends StatefulWidget {
  final String title;
  final VoidCallback onPressed;

  NavBarButton({Key key, this.title, this.onPressed}) : super(key: key);

  @override
  _NavBarButtonState createState() => _NavBarButtonState();
}

class _NavBarButtonState extends State<NavBarButton> {
  Color btnColor = AppColors.white;
  int _enterCounter = 0;
  int _exitCounter = 0;
  double x = 0.0;
  double y = 0.0;

  void _incrementEnter(PointerEvent details) {
    setState(() {
      this._enterCounter++;
    });
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      btnColor = AppColors.white;
      this._exitCounter++;
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      btnColor = AppColors.grey.withOpacity(.25);
      x = details.position.dx;
      y = details.position.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: _incrementEnter,
      onHover: _updateLocation,
      onExit: _incrementExit,
      child: FlatButton(
        onPressed: widget.onPressed,
        height: 70,
        splashColor: Colors.transparent,
        color: btnColor,
        textColor: AppColors.black54,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            '${widget.title}',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
