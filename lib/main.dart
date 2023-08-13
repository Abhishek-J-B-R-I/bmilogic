import 'package:flutter/material.dart';

void main() {
  runApp(bmi());
}

class bmi extends StatefulWidget {
  const bmi({super.key});

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          backgroundColor: Colors.grey.shade900,
        ),
        body: Container(
          margin: EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Row(

                children: [
                  SizedBox(width: 10,),
                  Expanded(

                    flex: 2,
                    child: TextButton(
                        onPressed: () {
                          print('male');
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.male,
                              color: Colors.white,
                              size: 80,
                            ),
                            Text('MALE',style: TextStyle(
                              color: Colors.grey.shade500
                            ),)
                          ],
                        ),
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey.shade800)),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    flex: 2,
                    child: TextButton(onPressed: (){print('female');}, child: Column(
                      children: [
                        Icon(Icons.female,color: Colors.white,size: 80,),
                        Text('FEMALE',style: TextStyle(
                          color: Colors.grey.shade500,
                        ),)
                      ],
                    ),
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey.shade800)),
                    ),
                  ),
                  SizedBox(width: 10,)

                ],
              ),

              Row(
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          /*border: Border.all(
                            color: Colors.red,
                          ),*/
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Colors.grey.shade800
                      ),
                      margin: EdgeInsets.only(top: 20,left: 10,right: 10),


                      //color: Colors.grey.shade800,
                      height: 100,
                      //width: double.infinity,
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        //crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text('HEIGHT', style: TextStyle(
                            color: Colors.grey.shade500,

                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('177',style: TextStyle(color: Colors.white,
                              fontSize: 50,
                                fontWeight: FontWeight.bold
                              ),),
                              Text('cm',style: TextStyle(
                                color: Colors.white
                              ),)
                            ],
                          ),


                        ],
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Column(
                      children: [
                        Text('WEIGHT',style: TextStyle(
                          color: Colors.grey.shade500,

                        ),),
                        Text('87',
                        style: TextStyle(color: Colors.white, fontSize: 50 , fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            TextButton(onPressed: (){ print('low');}, child: Icon(Icons.phishing)),
                            TextButton(onPressed: (){ print('high');}, child: Icon(Icons.add_circle_rounded,size: 50,  ),
                            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white) , shape: MaterialStateProperty.all(CircleBorder()),),

                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
