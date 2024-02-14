//This is the Profile button, which pops up a dialog box
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

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
  
  //controller
    final TextEditingController mfdController = TextEditingController();
    final TextEditingController expController = TextEditingController();
  
  //controller disposer
  @override
  void dispose() {
    mfdController.dispose();
    super.dispose();
  }

  //dropdown method
    String? _dropdownValue; // Declare _dropdownValue as a nullable string
  //set state, when new value selected
  void dropdownCallback (String? selectedValue) {  //selectedValue is a nullable string ( '?' means selectedValue could be null)
    if (selectedValue is String){
      setState(() {
        _dropdownValue = selectedValue;
      });
    }
  }

  //TIME 

  //create TimeOfDay variable
  TimeOfDay _timeOfDay = TimeOfDay(hour: 0, minute: 0);

  //show time picker method
  void _showTimePicker(){
    showTimePicker(
      context: context, 
      initialTime: TimeOfDay.now(),
    ).then((value){  //then value, user picks
      setState(() {
        _timeOfDay = value!;
      });
    }); 
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
                      controller: expController,
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
                                expController.text = DateFormat.yMd().format(selectedDate);
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
              padding: EdgeInsets.fromLTRB(10,0,10,0),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: AppColors.blueColor, style: BorderStyle.solid, width:1.2 ),
                  ),
                child: DropdownButton<String>( //set <String> explicitly else 'null' was not recognised
                  padding:EdgeInsets.fromLTRB(10,2,10,0),
                  items: const[
                    DropdownMenuItem<String>(child: Text("Select the type of medicine", style:TextStyle(color:AppColors.greyColor)), value:null), //actually first value shall come, then child(by invocation order)
                    DropdownMenuItem<String>(child: Text("type1"), value:"type1" ), //actually first value shall come, then child(by invocation order)
                    DropdownMenuItem<String>(child: Text("type2"), value:"type2" ),
                    DropdownMenuItem<String>(child: Text("type3"), value:"type3" ),
                    DropdownMenuItem<String>(child: Text("type4"), value:"type4" ),
                    DropdownMenuItem<String>(child: Text("type5"), value:"type5" ),
                    DropdownMenuItem<String>(child: Text("type6"), value:"type6" ),
                  ],
                  value: _dropdownValue,
                  onChanged:dropdownCallback,
                  iconSize: 25, //arrow size
                  iconEnabledColor: AppColors.greyColor,
                  isExpanded: true, //fills the parent
                  //if 'items' and 'onchanged' null, dropdown gets disabled
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
                    width: 120,
                    child: Row(
                      children: [

                        //display time
                        Text(
                          _timeOfDay.format(context).toString(),
                        ),

                        //button
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          child: MaterialButton(
                            color: AppColors.blueColor,
                            onPressed:_showTimePicker,
                            minWidth: 0,
                            height: 32,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12), // Adjust the value to match the container's borderRadius
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(0),
                              child: Text(
                                'SET',
                                style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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
