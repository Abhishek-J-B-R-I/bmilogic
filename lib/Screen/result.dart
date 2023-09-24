import 'package:bmi/Components/bottom_button.dart';
import 'package:bmi/logic/logic.dart';
import 'package:flutter/material.dart';
import '../Components/container.dart';
import '../Components/contant_file.dart';
import 'save_result.dart';


class result extends StatelessWidget {
  result({required this.bmic,required this.bmis, required this.bmi_message});
  final double bmic;
  final String bmis;
  final String bmi_message;

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
          Expanded(child: Container(margin: EdgeInsets.all(15),alignment: Alignment.bottomLeft,child: Text('Your Result',style: result_title,),)),
          Expanded(flex: 5,child: container( Color(0xFF1D1F33), Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(bmis, style: TextStyle(color: Color(0xFF22D775), fontWeight: FontWeight.bold, fontSize: 20),),
              Text(bmic.toStringAsFixed(1), style: TextStyle(color: Colors.white, fontSize: 100, fontWeight: FontWeight.bold),),
              Text("Normal BMI range:", style: TextStyle(color: Color(0xFF848590), fontSize: 20),),
              Text("18,5 -25 kg/m2",style: result_bottom_text_styel,),
              Text(bmi_message,textAlign: TextAlign.center,style: result_bottom_text_styel,),
              TextButton(onPressed: (){
                save_history_list.add(
                  Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(bmis,style: save_history_style,),
                      Text(" "),
                      Text(bmic.toStringAsFixed(1),style: save_history_style,),
                      Text(" "),
                      Text(bmi_message,style: save_history_style,)
                    ],
                  ),
                );
                Navigator.push(context, MaterialPageRoute(builder: (context)=>save_history()));
              }, child: Text("SAVE RESULT", style: TextStyle(color: Color(0xFFFFFFFF) , fontSize: 15),), style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF181A2E)), padding: MaterialStateProperty.all(EdgeInsets.only(left: 40,right: 40,top: 20,bottom: 20)),),),

            ],
          ),(){}),),button_bottom(text: "RE-CALCULATE YOUR BMI", onpre: (){
            Navigator.pop(context);
          },)
        ],
      ),
    );
  }
}


