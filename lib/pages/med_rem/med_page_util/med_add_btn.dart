import 'package:flutter/material.dart';
import 'package:medifys_app/assets/colors/colors.dart';

class MedAddBtn extends StatelessWidget{
  final String text;
  VoidCallback onPressed;
  
    MedAddBtn({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: AppColors.blueColor,
      child: Text(text),
    );
  }
}