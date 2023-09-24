import 'package:bmi/bottom_button.dart';
import 'package:flutter/material.dart';
import 'container.dart';
import 'contant_file.dart';
class result extends StatefulWidget {
  const result({super.key});

  @override
  State<result> createState() => _resultState();
}

class _resultState extends State<result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(margin: EdgeInsets.all(20),child: Text('Your Result',style: result_title,),)),
          Expanded(flex: 5,child: container( Color(0xFF1D1F33), Column(
            children: [
              Text("Normal"),
              Text("22.1"),
              Text("Normal BMI range:"),
              Text("18,5 -25 kg/m2"),
              Text("You have a normal body weight. Goods job!"),
              TextButton(onPressed: (){}, child: Text("SAVE RESULT")),

            ],
          ),(){}),),button_bottom(text: "RE-CALCULATE YOUR BMI", onpre: (){
            Navigator.pop(context);
          },)
        ],
      ),
    );
  }
}
