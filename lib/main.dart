import 'package:bmi_app/palette.dart';
import 'package:bmi_app/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(
        canvasColor: k_Swatch_1,
        fontFamily: "IBM",
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 19,
            color: Colors.white.withOpacity(0.95),
            fontWeight: FontWeight.w400,
          ),
          headline2: TextStyle(
            fontSize: 19,
            color: k_Swatch_4,
            fontWeight: FontWeight.w400,
          ),
          headline3: TextStyle(
            fontSize: 20,
            color: k_Swatch_4,
            fontWeight: FontWeight.w400,
          ),
          headline4: TextStyle(
            fontSize: 50,
            color: k_Swatch_5,
            fontWeight: FontWeight.w400,
          ),
          headline5: TextStyle(
            fontSize: 18,
            color: k_Swatch_1,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
      ),
    );
  }
}
