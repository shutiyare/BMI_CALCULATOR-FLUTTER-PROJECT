import 'package:bmi_calculator/screens/home.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData.dark().copyWith(
        primaryColor: Color(0xff111328),
        scaffoldBackgroundColor: const Color(0xff111328),
      ) ,
      home: const HomeScreen(),
    );
  }
}
// primaryColor: Color(0xff150A26),
//         scaffoldBackgroundColor: Color(0xff150A26)

// 0xff111328