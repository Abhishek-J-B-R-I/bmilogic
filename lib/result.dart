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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("NORMAL", style: TextStyle(color: Color(0xFF22D775), fontWeight: FontWeight.bold, fontSize: 20),),
              Text("22.1", style: TextStyle(color: Colors.white, fontSize: 100, fontWeight: FontWeight.bold),),
              Text("Normal BMI range:", style: TextStyle(color: Color(0xFF848590), fontSize: 20),),
              Text("18,5 -25 kg/m2",style: result_bottom_text_styel,),
              Text("You have a normal body weight. Goods job!",textAlign: TextAlign.center,style: result_bottom_text_styel,),
              TextButton(onPressed: (){}, child: Text("SAVE RESULT", style: TextStyle(color: Color(0xFFFFFFFF) , fontSize: 15),), style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF181A2E)), padding: MaterialStateProperty.all(EdgeInsets.only(left: 40,right: 40,top: 20,bottom: 20)),),),

            ],
          ),(){}),),button_bottom(text: "RE-CALCULATE YOUR BMI", onpre: (){
            Navigator.pop(context);
          },)
        ],
      ),
    );
  }
}
