import 'package:flutter/material.dart';

class inputfile extends StatefulWidget {
  const inputfile({super.key});

  @override
  State<inputfile> createState() => _inputfileState();
}

class _inputfileState extends State<inputfile> {
  Expanded struc() {
    return Expanded(
        child: Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xFF1D1F33)),
    ));
  }

  Expanded rowstruc() {
    return Expanded(
        child: Row(
      children: [
        struc(),
        struc(),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF0A0D22),
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        //backgroundColor: Color(0xFF0A0D22),
      ),
      body: Column(
        children: [rowstruc(), struc(), rowstruc()],
      ),
    );
  }
}
