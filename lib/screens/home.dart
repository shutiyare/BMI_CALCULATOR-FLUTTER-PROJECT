import 'dart:math';

import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/result.dart';
import 'package:bmi_calculator/widgets/icons_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/reusable_card.dart';
import '../widgets/round_circle.dart';
void main(){

}

enum Gender{male,female}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double height=180;
  int weight=70;
  int age=20;
  Gender selectedGender=Gender.male;

void _goToResultScreen(){
  double _result=weight/pow(height/100, 2);
  Navigator.push(context, MaterialPageRoute(builder: (_)=> ResulScreen(
    result: _result,
  )
  )
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('BMI calculator'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child:Row(children: [
              Expanded(
                child: ReusableCard(
                  selected: selectedGender ==Gender.male ? true:false,
                  onPressed: () {
                    setState(() {
                      selectedGender=Gender.male;
                    });
                  },
                  child: IconContent(
                    iconData: FontAwesomeIcons.mars,
                    title: 'MALE',
                  ),
                )
                ),
                Expanded(
                child: ReusableCard(
                  selected: selectedGender ==Gender.female ? true:false,
                  onPressed: () {
                    setState(() {
                      selectedGender=Gender.female;
                    });
                  },
                  child: IconContent(
                    iconData: FontAwesomeIcons.venus,
                    title: 'FEMALE',
                  ),
                )
                )
            ],)
            ),
            Expanded(
              child: ReusableCard(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("HEIGHT",style: TextStyle(color: Colors.grey),),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.round().toString(),style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700)),
                        Text("cm",style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    const SizedBox(height: 10),
                    SliderTheme(
                      data: SliderThemeData(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                        thumbColor: Colors.red,
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 16,
                        )
                      ),
                      child: Slider(
                        value: 180,
                        min: 10,
                        max: 310,
                        
                        
                         onChanged:(newval){
                          setState(() {
                            height=newval;
                            print(newval);
                          });
                          
                         },
                         ),
                    ),
                  ],
                ),
              
              )
                ),
                Expanded(
            child:Row(children: [
              Expanded(
                child: ReusableCard(
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("WEIGHT",style: TextStyle(color: Colors.grey),),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(weight.toString(),style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700)),
                        Text("kg",style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundCircle(
                          iconData: Icons.remove,
                          onPressed: () {
                            setState(() {
                              weight--;
                            });
                          },
                        ),
                        const SizedBox(width: 15,),
                        RoundCircle(
                          iconData: Icons.add,
                          onPressed: () {
                            setState(() {
                              weight++;
                            });
                          },
                        )
                      ],
                    )
                  ],
                ),
              
                )
                ),
                Expanded(
                child: ReusableCard(
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("AGE",style: TextStyle(color: Colors.grey),),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(age.toString(),style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700)),
                        Text("yrs",style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundCircle(
                          iconData: Icons.remove,
                          onPressed: () {
                            setState(() {
                              age--;
                            });
                          },
                        ),
                        const SizedBox(width: 15,),
                        RoundCircle(
                          iconData: Icons.add,
                          onPressed: () {
                            setState(() {
                              age++;
                            }
                            );
                          }
                        )
                      ],
                    )
                  ],
                ),
                )
                )
            ],
            )
            ),
            RawMaterialButton(
              onPressed: _goToResultScreen,
              child: Text("CALCULATE",style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                letterSpacing: 2.2
              ),),
              fillColor: kBottomContainerColor,
              constraints: BoxConstraints.tightFor(
                width: double.infinity,
                height: 56,
              ),

              )
        ],
        
      )

    );
  }
}






// Container(
//         color: Colors.white,
//         width: 200,
//         height: 200,
//       )