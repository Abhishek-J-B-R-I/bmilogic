import 'package:bmi/Components/container.dart';
import 'package:flutter/material.dart';
import 'result.dart';
import 'package:bmi/Components/contant_file.dart';
const avatar=1;
List<Row> save_history_list =[
  Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("Normal ",style: save_history_style,),
      Text(" 17.3 ", style: save_history_style,),
      Text(" you have a normal weight", style: save_history_style,)
    ],
  ),
];
class save_history extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Save History"),
      ),
      body:/* Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: save_history_list,
      ),*/
      Column(
        children: [
          Expanded(
            
            child: container( Color(0xFF1D1F33), Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: save_history_list,
            ), () { }),
          ),
        ],
      )
    );
  }
}
