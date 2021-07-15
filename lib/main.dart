import 'package:devfolio/utilities/app_colors.dart';
import 'package:flutter/material.dart';

import 'view/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const MaterialColor primarySwatchRed = MaterialColor(0xFFBE344B, const <int, Color>{500: Color(0xFFBE344B)});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DevFolio',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primaryColor: AppColors.red,
        scaffoldBackgroundColor: AppColors.black,
        // primarySwatch: Theme.of(context).primaryColor,
      ),
      home: SplashScreen(),
    );
  }
}
