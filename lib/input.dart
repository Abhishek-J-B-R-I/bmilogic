import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'container.dart';
import 'icono.dart';
import 'contant_file.dart';

enum genderr{
 male, female
}
class inputfile extends StatefulWidget {
  const inputfile({super.key});

  @override
  State<inputfile> createState() => _inputfileState();
}

class _inputfileState extends State<inputfile> {

 genderr? selectgender;
  //Color maleinactivecolor= topcontainercolor;
  //Color femaleinactivecolor = topcontainercolor;


  //1=male , 2=female
/*
void changeactivo(genderr gender){
  /*if(gender==genderr.male){
    /*if(maleinactivecolor==topcontainercolor){
      femaleinactivecolor=topcontainercolor;
      maleinactivecolor=activecolor;
    }
    else{
      maleinactivecolor=topcontainercolor;

    }*/

    maleinactivecolor==topcontainercolor ? (femaleinactivecolor=topcontainercolor,maleinactivecolor=activecolor) : maleinactivecolor=topcontainercolor;
  }
  else{
    /*if(femaleinactivecolor==topcontainercolor){
      maleinactivecolor=topcontainercolor;
      femaleinactivecolor=activecolor;
    }
    else{
      femaleinactivecolor=topcontainercolor;
    }*/

    femaleinactivecolor==topcontainercolor ? (maleinactivecolor=topcontainercolor,femaleinactivecolor=activecolor) : (femaleinactivecolor=topcontainercolor);
  }*/
  //Color tr = maleinactivecolor==topcontainercolor ? (femaleinactivecolor=topcontainercolor,maleinactivecolor=activecolor) : (maleinactivecolor=topcontainercolor);

  //gender==genderr.male?():( femaleinactivecolor==topcontainercolor ? (maleinactivecolor=topcontainercolor,femaleinactivecolor=activecolor) : (femaleinactivecolor=topcontainercolor);
  );
}*/

  Expanded struc({ required Color C, required Widget chi, genderr? gg}) {
    return Expanded(child: container(C, chi, (){

      setState(() {
        selectgender=gg!;
      });

    }));
  }

  Expanded rowstruc(
      {  genderr? gm,genderr? gf, Color? r, Color? l,  Widget? ch,  Widget? ch2}) {
    return Expanded(
        child: Row(
      children: [
        struc(C: r!, chi: ch!,gg: gm),
        struc(C: l!, chi: ch2!, gg: gf),
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
              r: selectgender==genderr.male?activecolor:topcontainercolor,l:selectgender==genderr.female?activecolor:topcontainercolor,gm: genderr.male,gf: genderr.female,
              ch: icono(iconoo: FontAwesomeIcons.mars, label: 'MALE'),
              ch2: icono(iconoo: FontAwesomeIcons.venus, label: 'Female')),
          struc(
            C: center_container_color,
            chi: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('HEIGHT',style: label_text_style,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text('186',style: height_value,),
                    Text('cm',style: label_text_style,)
                  ],
                )
              ],
            )

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
