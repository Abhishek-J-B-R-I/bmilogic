import 'package:flutter/material.dart';

class inputfile extends StatefulWidget {
  const inputfile({super.key});

  @override
  State<inputfile> createState() => _inputfileState();
}

class _inputfileState extends State<inputfile> {
  Expanded struc({required Color C}) {
    return Expanded(
        child: container(C));
  }

  Expanded rowstruc({required Color r}) {
    return Expanded(
        child: Row(
      children: [
        struc(C: r),
        struc(C: r),
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
        children: [rowstruc(r: Colors.greenAccent), struc(C: Color(0xFF111428)), rowstruc(r: Colors.blue)],
      ),
    );
  }
}

class container extends StatelessWidget {
container(@required this.colour);
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10), color: colour),
    );
  }
}
