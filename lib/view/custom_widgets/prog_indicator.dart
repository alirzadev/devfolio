import 'package:devfolio/utilities/app_colors.dart';
import 'package:flutter/material.dart';

class ProgIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Row(
          children: [
            Spacer(),
            CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(AppColors.red)),
            Spacer(),
          ],
        ),
        Spacer(),
      ],
    );
  }
}
