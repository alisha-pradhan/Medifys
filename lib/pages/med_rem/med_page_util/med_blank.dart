// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:medifys_app/assets/colors/colors.dart';

class MedBlank extends StatelessWidget{
  const MedBlank ({super.key});

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.all(60),
      child: Container(
        height: 400,
        child: Center(
          child: Text(
            "You haven't added any Medicines",
            style: TextStyle(
              fontSize: 50,
              fontWeight:FontWeight.normal,
              color: AppColors.greyColor 
            ),
          ),
        ),
      ),
    );
  }
}