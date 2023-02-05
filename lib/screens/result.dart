
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/home.dart';
import 'package:bmi_calculator/widgets/custom_button.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ResulScreen extends StatelessWidget {
  const ResulScreen({super.key, required this.result});
  final double result;
  String translate(){
    if (result >0 && result<=18)
    return 'you are underweight';
    if (result >19 && result<=25)
    return 'you are Normal';
    if (result >16 && result<=29)
    return 'you are Overweight';
    else
    return 'Obese';
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text('Result:',style: TextStyle(
              fontSize: 30,fontWeight: FontWeight.w400,
              color: Colors.grey.shade400
            ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/tahliil.jpg'),
                radius: 50.0,
              ),
              const SizedBox(height: 20,),
            Text(
              result.toStringAsFixed(1),
              style: TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 255, 181, 181),
              ),
            ),
            const SizedBox(height: 15,),
            Center(
            child: Text(
              translate(),style: TextStyle(
                fontSize: 30
              ),
              textAlign: TextAlign.center,
            ),
          )
          ]),
          )
          ),
          
          CustomButton(onpresse: () {
            Navigator.pop(context);
          } ,title: 'Re-calculate',)
        
      ],)
    );
  }
}

// Text('result:$result.',style:
//        TextStyle(fontSize: 30),
//        )

// Text('Result',style:
//           TextStyle(fontSize: 30)),
//           SizedBox(width: 10,),
//           Text(result.toStringAsFixed(1),style:
//           TextStyle(fontSize: 30),
//        )