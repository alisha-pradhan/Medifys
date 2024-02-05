// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:medifys_app/assets/colors/colors.dart';
import 'package:medifys_app/pages/med_rem/profile_dialog.dart';


class MedRemPage extends StatefulWidget {
  const MedRemPage({super.key});

  @override
    State<MedRemPage> createState() => _MedRemState();
}

class _MedRemState extends State<MedRemPage> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.blueColor,
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.home),
                onPressed: () {
                  // Redirect to MedRem
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MedRemPage()));
                },
            ),
            Text(
              'Medifys',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: AppColors.whiteColor,
                ),
              ),
            ],
          ),

          
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
              // Show the ProfileDialog
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return ProfileDialog();
                  },
                );
              },
            ) ,
          ],
      ),

    //bottom nav bar
    

    );
  }
}






    //   //app bar
    //   appBar: PreferredSize(
    //     preferredSize: Size.fromHeight(0.03 * MediaQuery.of(context).size.height),
    //     child: AppBar(
    //       backgroundColor:AppColors.blueColor,
    //     ),
    //   ),

    // //Top Tab Bar
    // body: TabBarView(
    //   children: [
    //     MedRemPage(),
        
    //   ]),