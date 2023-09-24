import 'package:flutter/material.dart';


class container extends StatelessWidget {
  container( this.colour, this.childcare,this.onPress1);
  final Color colour;
  final Widget childcare;
  final void Function()? onPress1;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress1,
      child: Container(
        child: childcare,
        margin: EdgeInsets.all(15),
        decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(10), color: colour),
      ),
    );
  }
}
