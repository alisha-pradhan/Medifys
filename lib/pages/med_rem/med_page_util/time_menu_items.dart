// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:medifys_app/assets/colors/colors.dart';

class TimeMenuItems extends StatelessWidget{
  const TimeMenuItems({super.key});

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        //1st item
        Container(
          height: 50,
          color: AppColors.whiteColor,
          child: Text(
            'AM'
          ),
        ),

        //2nd item
        Container(
          height: 50,
          color: AppColors.whiteColor,
          child: Text(
            'AM'
          ),
        ),

     ],
    );
  }
}