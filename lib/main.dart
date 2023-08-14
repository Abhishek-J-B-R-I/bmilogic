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
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey.shade800),),
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
                      height: 150,
                      //width: double.infinity,
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        //crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text('HEIGHT', style: TextStyle(
                            color: Colors.grey.shade500,

                          ),),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
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
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 20,left: 10),
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
                              TextButton(onPressed: (){ print('low');}, child: Icon(
                                  const IconData(0xe15b, fontFamily: 'MaterialIcons'),
                                  color: Colors.black),
                                //backgroundColor: Colors.white,
                              ),
                              TextButton(onPressed: (){ print('high');}, child: Icon(Icons.add_rounded ,size: 37, color: Colors.white, ),
                              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey.shade700) , shape: MaterialStateProperty.all(CircleBorder()),),

                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 20, top: 20,right: 10),
                      
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(5),
                        

                      ),
                      padding: EdgeInsets.all(5),
                      //color: Colors.grey.shade800,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('AGE', style: TextStyle(color: Colors.grey),),
                          Text('21',style: TextStyle(color: Colors.white, fontSize: 50 , fontWeight: FontWeight.bold) , ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextButton(onPressed: (){print('minus');}, child: Icon(Icons.add, color: Colors.white,size: 35) ,
                              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey.shade700),shape: MaterialStateProperty.all(CircleBorder())),),
                              TextButton(onPressed: (){print('plus');}, child: Icon(Icons.add, color: Colors.white, size: 35,),
                              style: ButtonStyle( backgroundColor: MaterialStateProperty.all(Colors.grey.shade700),shape: MaterialStateProperty.all(CircleBorder())),)
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextButton(onPressed: (){print('calculate' );}, child: Text('CALCULATE', style: TextStyle(color: Colors.white),),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red),),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
