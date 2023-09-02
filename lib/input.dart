import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'container.dart';
import 'icono.dart';

const bottomcontainerheight = 80.0;
const topcontainercolor = Color(0xFF01D1F33);
const center_container_color = Color(0xFF111428);
const last_second_container_color = Color(0xFF111428);
const bottom_container_color = Color(0xFFEB1555);
const activecolor= Color(0xFF04040E);
enum genderr{
 male, female
}
class inputfile extends StatefulWidget {
  const inputfile({super.key});

  @override
  State<inputfile> createState() => _inputfileState();
}

class _inputfileState extends State<inputfile> {


  Color maleinactivecolor= topcontainercolor;
  Color femaleinactivecolor = topcontainercolor;


  //1=male , 2=female

void changeactivo(genderr gender){
  if(gender==genderr.male){
    if(maleinactivecolor==topcontainercolor){
      femaleinactivecolor=topcontainercolor;
      maleinactivecolor=activecolor;
    }
    else{
      maleinactivecolor=topcontainercolor;

    }
  }
  else{
    if(femaleinactivecolor==topcontainercolor){
      maleinactivecolor=topcontainercolor;
      femaleinactivecolor=activecolor;
    }
    else{
      femaleinactivecolor=topcontainercolor;
    }
  }
}

  Expanded struc({required Color C, required Widget chi, genderr? gg}) {
    return Expanded(child: GestureDetector(onTap: (){

      print('yo');
      //struc(C: activecolors, chi: chi);
      setState(() {
        print('okay');
        changeactivo(gg!);
      });
    },child: container(C, chi)));
  }

  Expanded rowstruc(
      { genderr? gm,genderr? gf,required Color r,required Color l, required Widget ch, required Widget ch2}) {
    return Expanded(
        child: Row(
      children: [
        struc(C: r, chi: ch,gg: gm),
        struc(C: l, chi: ch2, gg: gf),
      ],
    ));
  }
/*
  Column icoo({required IconData icono, required String label}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icono,
          //FontAwesomeIcons.mars,
          color: Colors.white,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: TextStyle(
            color: Color(0xFF8E8F99),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }*/

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
          rowstruc(
              r: maleinactivecolor,l:femaleinactivecolor,gm: genderr.male,gf: genderr.female,
              ch: icono(iconoo: FontAwesomeIcons.mars, label: 'MALE'),
              ch2: icono(iconoo: FontAwesomeIcons.venus, label: 'Female')),
          struc(
            C: center_container_color,
            chi: Column(
              children: [Text('       ')],
            ),
          ),

          rowstruc(r: last_second_container_color,l: last_second_container_color, ch: Column(), ch2: Column()),
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
