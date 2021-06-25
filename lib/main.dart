import 'package:devfolio/utilities/app_colors.dart';
import 'package:devfolio/view/homepage.dart';
import 'package:flutter/material.dart';

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
        // primarySwatch: Theme.of(context).primaryColor,
      ),
      home: Homepage(),
    );
  }
}
