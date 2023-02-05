
import 'package:flutter/material.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  final Function() onpresse;
  final String? title;
  const CustomButton({super.key, required this.onpresse,  this.title});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
              onPressed: onpresse,
              child: Text(title?? 'calculate',style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                letterSpacing: 2.2
              ),),
              fillColor: kBottomContainerColor,
              constraints: BoxConstraints.tightFor(
                width: double.infinity,
                height: 56,
              ),

              );
  }
}
