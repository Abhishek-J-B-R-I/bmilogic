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
          margin: EdgeInsets.only(top: 15),
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
                              color: Colors.grey.shade700
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
                          color: Colors.grey.shade700,
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
                children: [
                  SizedBox(width: 10,),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    color: Colors.grey.shade800,
                    height: 50,
                    child: Column(
                      children: [
                        Text('HEIGHT'),
                        Text('177'),
                        Text('cm')

                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
