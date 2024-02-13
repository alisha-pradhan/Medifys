//This is the Profile button, which pops up a dialog box
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:medifys_app/assets/colors/colors.dart';

class AddDoc extends StatefulWidget{
  const AddDoc({Key? key}) : super(key: key);

  @override
  State<AddDoc> createState() => _AddDocState();
}
 
class _AddDocState extends State<AddDoc>{

  //controller
   late TextEditingController docName;
   late TextEditingController phNo;
   late TextEditingController address;
   late TextEditingController specialisation;
   late TextEditingController date;
   
   String text='';
   
  @override
  //init state
  void initState() {
    super.initState();
    docName = TextEditingController();
    phNo = TextEditingController();
    address = TextEditingController();
    specialisation = TextEditingController();
    date = TextEditingController();
  }

  @override
  //dispose
  void dispose() {
    docName.dispose();
    phNo.dispose();
    address.dispose();
    specialisation.dispose();
    date.dispose();
    super.dispose();
  }


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

            //1st Row-> Add pic and Doctor name
            Padding(
              padding: EdgeInsets.all(2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
              
                  //user profile icon
                  Padding(
                    padding:EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Icon(
                          Icons.add_a_photo,
                          size: 50,
                          color:AppColors.blueColor,
                        ),
                        Text(
                          'Upload Prescription',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: AppColors.blueColor
                          ),
                        ),
 
                      ],
                    )
                  ),

                  //doc Name
                  TextField(
                    controller: docName,
                    onSubmitted: (String value){ //taking user input
                      setState(() {
                        text = docName.text;
                      });
                    }
                  )            
                ],
              ),
            ),

            

          ],   
        ),
      ),

    );

  }
}