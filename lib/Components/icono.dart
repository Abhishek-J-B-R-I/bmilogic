import 'package:flutter/material.dart';
import 'contant_file.dart';
class icono extends StatelessWidget {
  icono({required this.iconoo, required this.label});
  final IconData iconoo;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          iconoo,
          //FontAwesomeIcons.mars,
          color: Colors.white,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          label,
          style:label_text_style,
        )
      ],
    );
  }
}
