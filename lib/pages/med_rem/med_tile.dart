// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MedTile extends StatelessWidget {

  //stating variables
  final String medName;
  final bool medTaken;
  Function(bool?)? onChanged;


  MedTile({
    super.key,
    required this.medName,
    required this.medTaken,
    required this.onChanged,
    });


  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [

            //status
            //Status(value:value, onChanged:onChanged),

            //task name
            Text(medName),

          ],

        ),

      )

      );
  }




  
}