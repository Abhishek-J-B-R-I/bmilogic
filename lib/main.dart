import 'package:flutter/material.dart';
import 'input.dart';
import 'package:html/dom.dart';
import 'package:html/dom_parsing.dart';
import 'package:html/html_escape.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart';

const primary_color = Color(0xFF0A0D22);
const appbar_theme_color = Color(0xFF0A0D22);
const scaffold_background_color = Color(0xFF0A0D22);
const text_theme_color = Color(0xFF81838D);


void main() {
  runApp(bmi());
}



class bmi extends StatelessWidget {
  const bmi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: primary_color ,
          appBarTheme: AppBarTheme(backgroundColor: appbar_theme_color),
          scaffoldBackgroundColor: scaffold_background_color,
          textTheme: const TextTheme(
              bodyLarge: TextStyle(color: text_theme_color))),
      //theme:ThemeData.dark(),
      home: inputfile() ,
    );
  }
}
//