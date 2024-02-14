//This is the Profile button, which pops up a dialog box
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import DateFormat from the intl package
import 'package:dotted_border/dotted_border.dart'; //for dotted border
import 'package:medifys_app/assets/colors/colors.dart';

class AddDoc extends StatefulWidget{
  const AddDoc({super.key,});

  @override
    State<AddDoc> createState() => _AddDocState();
}

class _AddDocState extends State<AddDoc>{

    final TextEditingController dateController = TextEditingController();
    final TextEditingController phnoController = TextEditingController();

  @override
  void dispose() {
    dateController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context){
    return Dialog(
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
        height: 370,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(32),
        ),

        child: Column(        //column is the child of container
          mainAxisSize: MainAxisSize.min,
          children: [

            //1st row -> CamIcon and medName
            Padding(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: Row(
                children: [

                  //add Picture
                  DottedBorder(
                    color: AppColors.blueColor,
                    strokeWidth: 3,
                    strokeCap: StrokeCap.butt,
                    borderType: BorderType.RRect,
                    dashPattern:[5], 
                    borderPadding: EdgeInsets.all(3),
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Icon(
                            Icons.add_a_photo,
                            size: 50,
                            color: AppColors.blueColor,
                          ),
                          Text(
                            'Upload photo',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                              color: AppColors.blueColor
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                   SizedBox(width: 20), // Add some space between the columns
                  
                  // med name - textfield
                  Expanded(
                    child: TextField(
                       decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColors.blueColor)
                          ),
                          hintText: "Name of the Doctor",
                          hintStyle: TextStyle(color: AppColors.greyColor), // Set the hint text color
                          contentPadding: EdgeInsets.only(bottom: 2), // Adjust the bottom padding
                        ),
                      ),
                    ),
                ],
              ),
            ),

            //5th Row -> Date
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
              child: Expanded(
                child: TextField(
                  controller: phnoController,
                  keyboardType: TextInputType.phone,
                  onTap: () {},
                   decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.blueColor)
                      ),
                      hintText: "Phone",
                      hintStyle: TextStyle(color: AppColors.greyColor), // Set the hint text color
                      contentPadding: EdgeInsets.only(bottom: 2), // Adjust the bottom padding
                    ),
                  ),
                ),
            ),

           

            //3rd Row -> Address
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
              child: Expanded(
                child: TextField(
                  keyboardType: TextInputType.number,
                   decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.blueColor)
                      ),
                      hintText: "Address Present in the pack",
                      hintStyle: TextStyle(color: AppColors.greyColor), // Set the hint text color
                      contentPadding: EdgeInsets.only(bottom: 2), // Adjust the bottom padding
                    ),
                  ),
                ),
            ),


            //4th Row -> Specialisation
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
              child: Expanded(
                child: TextField(
                  keyboardType: TextInputType.number,
                   decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.blueColor)
                      ),
                      hintText: "Specialisation",
                      hintStyle: TextStyle(color: AppColors.greyColor), // Set the hint text color
                      contentPadding: EdgeInsets.only(bottom: 2), // Adjust the bottom padding
                    ),
                  ),
                ),
            ),

             //5th Row -> Date
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
              child: Expanded(
                child: TextField(
                  controller: dateController,
                  keyboardType: TextInputType.datetime,
                  onTap: () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                    ).then((selectedDate) {
                      if (selectedDate != null) {
                        setState(() {
                            dateController.text = DateFormat.yMd().format(selectedDate);
                        });
                      }
                    });
                  },
                   decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.blueColor)
                      ),
                      hintText: "Date",
                      hintStyle: TextStyle(color: AppColors.greyColor), // Set the hint text color
                      contentPadding: EdgeInsets.only(bottom: 2), // Adjust the bottom padding
                    ),
                  ),
                ),
            ),


           
            //6th row -> add btn
            Padding(
              padding: EdgeInsets.all(5),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  color: AppColors.blueColor,
                  borderRadius: BorderRadius.circular(15), // Adjust the value to change the roundness
                ),
                child: MaterialButton(
                  onPressed: (){},
                  child: Text(
                    'ADD',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
            ),
 
          ],   
        ),
      ),

    );


  }
}




  // //save method
  // VoidCallback onSave;
