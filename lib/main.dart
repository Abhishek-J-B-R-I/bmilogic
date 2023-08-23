import 'package:flutter/material.dart';
import 'input.dart';
void main() {
  runApp(bmi());
}



class bmi extends StatelessWidget {
  const bmi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xFF0A0D22),
          appBarTheme: AppBarTheme(backgroundColor: Color(0xFF0A0D22)),
          scaffoldBackgroundColor: Color(0xFF0A0D22),
          textTheme: const TextTheme(
              bodyLarge: TextStyle(color: Color(0xFF81838D)))),
      //theme:ThemeData.dark(),
      home: inputfile() ,
    );
  }
}
//