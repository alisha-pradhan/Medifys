//This is the Profile button, which pops up a dialog box
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import DateFormat from the intl package
import 'package:dotted_border/dotted_border.dart'; //for dotted border
import 'package:medifys_app/assets/colors/colors.dart';

class AddTile extends StatefulWidget{
  const AddTile({super.key,});

  @override
    State<AddTile> createState() => _AddTileState();
}

class _AddTileState extends State<AddTile>{

    final TextEditingController mfdController = TextEditingController();
    final TextEditingController expController = TextEditingController();

  @override
  void dispose() {
    mfdController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context){
    return Dialog(
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
        height: 400,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(20),
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
                          hintText: "Name",
                          hintStyle: TextStyle(color: AppColors.greyColor), // Set the hint text color
                          contentPadding: EdgeInsets.only(bottom: 2), // Adjust the bottom padding
                        ),
                      ),
                    ),
                ],
              ),
            ),

            //2nd Row 
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
              child: Row(
                children: [

                  //mfd date
                  Expanded(
                    child: TextField(
                      controller: mfdController,
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
                                mfdController.text = DateFormat.yMd().format(selectedDate);
                            });
                          }
                        });
                      },
                       decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColors.blueColor)
                          ),
                          hintText: " MFD Date",
                          hintStyle: TextStyle(color: AppColors.greyColor), // Set the hint text color
                          contentPadding: EdgeInsets.only(bottom: 2), // Adjust the bottom padding
                        ),
                      ),
                    ),

                    SizedBox(width:20), //for space between

                  //exp date
                  Expanded(
                    child: TextField(
                      controller: mfdController,
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
                                mfdController.text = DateFormat.yMd().format(selectedDate);
                            });
                          }
                        });
                      },
                       decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColors.blueColor)
                          ),
                          hintText: "EXP Date",
                          hintStyle: TextStyle(color: AppColors.greyColor), // Set the hint text color
                          contentPadding: EdgeInsets.only(bottom: 2), // Adjust the bottom padding
                        ),
                      ),
                    ),
                ]
              ),
            ),

            //3rd Row -> Dropdown
            Padding(
              padding: EdgeInsets.all(1),
              child: Expanded(
                child: Container(
                  padding: EdgeInsets.all(5),
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(10.0),
                    //   border: Border.all(
                    //     color: AppColors.blueColor, style: BorderStyle.solid, width: 2),
                    // ),
                  child: DropdownMenu(
                    label: const Text('Select the type of Medicine', style: TextStyle(color: AppColors.greyColor, fontWeight: FontWeight.w500),),
                    width: 300,
                    dropdownMenuEntries: <DropdownMenuEntry<Color>> [
                      DropdownMenuEntry(value:Colors.blue.shade700, label:'Type 1'),
                      DropdownMenuEntry(value:Colors.pink.shade700, label:'Type 2'),
                      DropdownMenuEntry(value:Colors.green.shade700, label:'Type 3'),
                      DropdownMenuEntry(value:Colors.orange.shade700, label:'Type 4'),
                      DropdownMenuEntry(value:Colors.deepPurple.shade700, label:'Type 5'),
                    ],
                  ),
                ),
              ),
            ),

            //4th Row
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
              child: Row(
                children: [

                  //amount
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.number,
                       decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColors.blueColor)
                          ),
                          hintText: "Amount Present in the pack",
                          hintStyle: TextStyle(color: AppColors.greyColor), // Set the hint text color
                          contentPadding: EdgeInsets.only(bottom: 2), // Adjust the bottom padding
                        ),
                      ),
                    ),

                    SizedBox(width:20), //for space between

                  //time
                  SizedBox(
                    width: 50,
                    child: Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                         decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.blueColor)
                            ),
                            hintText: "Time",
                            hintStyle: TextStyle(color: AppColors.greyColor), // Set the hint text color
                            contentPadding: EdgeInsets.only(bottom: 2), // Adjust the bottom padding
                          ),
                        ),
                      ),
                  ),   
                ]
              ),
            ),

            //5th Row -> weekdays
            Padding(
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //monday
                  Container(
                    width: 40, // Adjust width and height according to your preference
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Make it circular
                      color: AppColors.greyColor, // Adjust color as needed
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'M',
                        style: TextStyle(
                          fontSize: 16, // Adjust font size as needed
                          color: AppColors.blackColor, // Adjust text color as needed
                        ),
                      ),
                    ),
                  ),

                  //tuesday
                  Container(
                    width: 40, // Adjust width and height according to your preference
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Make it circular
                      color: AppColors.greyColor, // Adjust color as needed
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'T',
                        style: TextStyle(
                          fontSize: 16, // Adjust font size as needed
                          color: AppColors.blackColor, // Adjust text color as needed
                        ),
                      ),
                    ),
                  ),

                  //wednesday
                  Container(
                    width: 40, // Adjust width and height according to your preference
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Make it circular
                      color: AppColors.greyColor, // Adjust color as needed
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'W',
                        style: TextStyle(
                          fontSize: 16, // Adjust font size as needed
                          color: AppColors.blackColor, // Adjust text color as needed
                        ),
                      ),
                    ),
                  ),

                  //thursday
                  Container(
                    width: 40, // Adjust width and height according to your preference
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Make it circular
                      color: AppColors.greyColor, // Adjust color as needed
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'T',
                        style: TextStyle(
                          fontSize: 16, // Adjust font size as needed
                          color: AppColors.blackColor, // Adjust text color as needed
                        ),
                      ),
                    ),
                  ),

                  //friday
                  Container(
                    width: 40, // Adjust width and height according to your preference
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Make it circular
                      color: AppColors.greyColor, // Adjust color as needed
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'F',
                        style: TextStyle(
                          fontSize: 16, // Adjust font size as needed
                          color: AppColors.blackColor, // Adjust text color as needed
                        ),
                      ),
                    ),
                  ),

                  //saturdayyy
                  Container(
                    width: 40, // Adjust width and height according to your preference
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Make it circular
                      color: AppColors.greyColor, // Adjust color as needed
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'S',
                        style: TextStyle(
                          fontSize: 16, // Adjust font size as needed
                          color: AppColors.blackColor, // Adjust text color as needed
                        ),
                      ),
                    ),
                  ),

                  //sundayyy
                  Container(
                    width: 40, // Adjust width and height according to your preference
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Make it circular
                      color: AppColors.greyColor, // Adjust color as needed
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'S',
                        style: TextStyle(
                          fontSize: 16, // Adjust font size as needed
                          color: AppColors.blackColor, // Adjust text color as needed
                        ),
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),

            //6th row -> add btn
            Padding(
              padding: EdgeInsets.all(5),
              child: Container(
                width: 300,
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
