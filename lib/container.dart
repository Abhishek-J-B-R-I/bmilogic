import 'package:flutter/material.dart';


class container extends StatelessWidget {
  container(@required this.colour, this.childcare);
  final Color colour;
  final Widget childcare;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: childcare,
      margin: EdgeInsets.all(15),
      decoration:
      BoxDecoration(borderRadius: BorderRadius.circular(10), color: colour),
    );
  }
}
