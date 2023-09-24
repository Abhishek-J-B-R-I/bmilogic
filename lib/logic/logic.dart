import 'dart:math';

class bmilogic{

  bmilogic({required this.height, required this.weight});
  final double height;
  final double weight;

  late double bmi;
  double bmicalculatenow(){
    return bmi = weight/pow(height/100, 2);

  }

  String youare(){
    if(bmi<18.5){
      return "Underweight";
    }
    else if(bmi>=18.5 && bmi<24.9){
      return "Normal Weight";
    }
    else if((bmi>=25.0 && bmi <29.9)){
      return "Overweight";
    }
    else if(bmi>=30){
      return "Obese";
    }
    return " ";
  }

  String messages(){
    if(bmi<18.5){
      return "You have a under body weight. ";
    }
    else if(bmi>=18.5 && bmi<24.9){
      return "You have a normal body weight. Good job!";
    }
    else if((bmi>=25.0 && bmi <29.9)){
      return "You have a over body weight.";
    }
    else if(bmi>=30){
      return "Obese";
    }
    return " ";
  }

}