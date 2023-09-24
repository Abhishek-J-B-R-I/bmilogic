import 'package:flutter/material.dart';
import 'contant_file.dart';
import 'result.dart';
class button_bottom extends StatelessWidget {
button_bottom({required this.text, required this.onpre });
final String text;
final void Function() onpre;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bottom_container_color,
      margin: EdgeInsets.only(top: 10),
      width: double.infinity,
      height: bottomcontainerheight,
      child: TextButton(
        onPressed: /*(){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>result()));
        }*/ onpre,
        child: Text(text,style: bottom_button_style,),
      ),
    );
  }
}