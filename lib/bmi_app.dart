
import 'package:flutter/material.dart';
import'package:firstproj/screen/home_screen.dart';

class BmiApp extends StatelessWidget {
  const BmiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
       theme:ThemeData(
brightness: Brightness.dark,
         scaffoldBackgroundColor: Color(0xff1C2135),
       ) ,
      home: home_screen(),
    );
  }
}
