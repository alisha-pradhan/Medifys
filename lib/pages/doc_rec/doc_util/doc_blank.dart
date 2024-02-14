// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:medifys_app/assets/colors/colors.dart';

class DocBlank extends StatelessWidget{
  const DocBlank ({super.key});

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.all(60),
      child: SizedBox(
        height: 400,
        child: Center(
          child: Text(
            "You haven't added any Doctor",
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