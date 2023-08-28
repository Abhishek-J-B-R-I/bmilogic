import 'package:flutter/material.dart';

const bottomcontainerheight = 80.0;
const topcontainercolor = Color(0xFF01D1F33);
const center_container_color = Color(0xFF111428);
const last_second_container_color = Color(0xFF111428);
const bottom_container_color=Color(0xFFEB1555);

class inputfile extends StatefulWidget {
  const inputfile({super.key});

  @override
  State<inputfile> createState() => _inputfileState();
}

class _inputfileState extends State<inputfile> {
  Expanded struc({required Color C}) {
    return Expanded(child: container(C));
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
        children: [
          rowstruc(r: topcontainercolor),
          struc(C: center_container_color),
          rowstruc(r: last_second_container_color),
          Container(
            color: bottom_container_color,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomcontainerheight,
          )
        ],
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
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: colour),
    );
  }
}
