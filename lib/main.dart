import 'package:devfolio/view/homepage/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DevFolio',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primarySwatch: Colors.grey,
      ),
      home: HomePage(),
    );
  }
}
