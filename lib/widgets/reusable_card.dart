import 'package:flutter/material.dart';

import '../constants.dart';

class ReusableCard extends StatelessWidget {
  final Widget? child;
  final bool selected;
  final Function()? onPressed;
  const ReusableCard({ this.child ,this.selected=true,this.onPressed }) ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: child,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: selected==true? kActiveCardColor :kInctiveCardColor,
        ),
        margin: EdgeInsets.all(10),
        
      ),
    );
  }
}