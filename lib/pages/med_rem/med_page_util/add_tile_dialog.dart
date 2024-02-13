//This is the Profile button, which pops up a dialog box
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:medifys_app/assets/colors/colors.dart';
import 'package:medifys_app/pages/med_rem/med_page_util/med_pop_btn.dart';
import 'package:medifys_app/pages/med_rem/med_page_util/time_pop_btn.dart';
import 'package:medifys_app/pages/med_rem/med_page_util/med_add_btn.dart';

class AddTile extends StatefulWidget{
  const AddTile({super.key,});

  @override
    State<AddTile> createState() => _AddTileState();
}

class _AddTileState extends State<AddTile>{

//text controller to get user input
  final medName = TextEditingController();
  final mfd = TextEditingController();
  final exp = TextEditingController();
  final amt = TextEditingController();
  final time = TextEditingController();


  @override
  Widget build(BuildContext context){
    return Dialog(
      child: Container(
        height: 350,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(20),
        ),

        child: Column(        //column is the child of container
          mainAxisSize: MainAxisSize.min,
          children: [

            //1st row -> CamIcon and medName
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [

                  //add Picture
                  Column(
                    children: [
                      Icon(
                        Icons.add_a_photo,
                        size: 50,
                        color: AppColors.blueColor,
                      ),
                      
                      Text(
                        'Upload photo',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: AppColors.blueColor
                        ),
                      )
                    ],
                  ),

                  //get user input
                  TextField(
                    controller: medName,  //to control textfield
                    decoration: InputDecoration(
                      hintText: "medName",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.blueColor)
                      ),
                    ),
                  ),
                ],
              ),
            ),


            //2nd row -> MFD and exp
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [

                  //mfd date
                  TextField(
                    controller: mfd,  //to control textfield
                    decoration: InputDecoration(
                      hintText: "MFD date",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.blueColor)
                      ),
                    ),
                  ),

                  //exp date
                  TextField(
                    controller: exp,  //to control textfield
                    decoration: InputDecoration(
                      hintText: "exp date",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.blueColor)
                      ),
                    ),
                  ),
                ],
              ),
            ),


            //3rd row -> Medcicine type selection
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.blueColor,
                  width: 1.0, 
                  style: BorderStyle.solid,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
              
                      //Text 
                      Text(
                         "Select the type of medicine",
                      ),
              
                      //Med Popover
                      MedPopBtn(),
                  ],
                ),
              ),
            ),

            //4th row -> amount and time
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [

                  //amount
                  TextField(
                    controller: amt,  //to control textfield
                    decoration: InputDecoration(
                      hintText: "Amount present in the pack",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.blueColor)
                      ),
                    ),
                  ),

                  //time
                  Row(
                    children: [
                      //time
                      TextField(
                        controller: time,  //to control textfield
                        decoration: InputDecoration(
                          hintText: "Time",
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColors.blueColor)
                          ),
                        ),
                      ),

                      //AM-PM
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.blueColor,
                            width: 1.0, 
                            style: BorderStyle.solid,
                          ),
                        ),
                        child:Row(
                          children: [
                           Text(
                            'AM'
                            ),

                            TimePopBtn(),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),


            //6th row-> Add btn
            Row(
              mainAxisAlignment:MainAxisAlignment.end,
              children: [MedAddBtn(text: "Add", onPressed: (){} ),]
            )
           
          ],   
        ),
      ),

    );


  }
}




  // //save method
  // VoidCallback onSave;
