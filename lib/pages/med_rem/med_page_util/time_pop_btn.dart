import 'package:popover/popover.dart';
import 'package:flutter/material.dart';
import 'package:medifys_app/assets/colors/colors.dart';
import 'package:medifys_app/pages/med_rem/med_page_util/time_menu_items.dart';

class TimePopBtn extends StatelessWidget{
  const TimePopBtn({super.key});

  @override
  Widget build(BuildContext context){
    return GestureDetector( //to enable tapping on
    //  onTap: () {}, //originally
    // onTap:() => showPopover(context: context, bodyBuilder: bodyBuilder),  // replacing bodybuilder
    onTap:() => showPopover(
      context: context, 
      bodyBuilder: (context) => TimeMenuItems(),    //context points to menu_items.dart
      width: 250,
      height:150,
      backgroundColor: Colors.deepPurple.shade300,
      direction: PopoverDirection.top,
    ),     
     child: const Icon(         //added const in front of icon
      Icons.keyboard_arrow_down_rounded, 
      color: AppColors.greyColor,
      size: 30,
      ), 
    );
  }
}