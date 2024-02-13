// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:medifys_app/assets/colors/colors.dart';
import 'package:medifys_app/pages/doc_rec/doc_util/add_doc.dart';
import 'package:medifys_app/pages/doc_rec/doc_util/doc_blank.dart';

class DocRecPage extends StatefulWidget {
  const DocRecPage({super.key});

  @override
    State<DocRecPage> createState() => _MedRemState();
}

class _MedRemState extends State<DocRecPage> {


//------------------------------------------------------------------------------------------------------------------------


//------------------------------------------------------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.whiteColor,

      body: Column(
        children: [
          //blank view
          DocBlank(),
        ],
        
      ),


      floatingActionButton:FloatingActionButton(
        onPressed: () {
          // Show the AddTile Dialog
          showDialog(
            context: context,
            builder: (context) => AddDoc(),
          );
        },
        backgroundColor: AppColors.blueColor,
        child: Icon(
          Icons.add_rounded,
          color: AppColors.whiteColor,
         ),
      ),
    );
  }
}




