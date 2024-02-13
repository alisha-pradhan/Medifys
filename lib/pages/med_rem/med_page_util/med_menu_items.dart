// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MedMenuItems extends StatelessWidget{
  const MedMenuItems({super.key});

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        //1st item
        Container(
          height: 50,
          color: Colors.deepPurple[300],
        ),

        //2nd item
        Container(
          height: 50,
          color: Colors.deepPurple[200],
        ),


        //3rd item
        Container(
          height: 50,
          color: Colors.deepPurple[100],
        ),
     ],
    );
  }
}