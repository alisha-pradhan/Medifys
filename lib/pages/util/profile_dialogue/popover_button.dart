import 'package:popover/popover.dart';
import 'package:flutter/material.dart';
import 'package:medifys_app/assets/colors/colors.dart';
import 'package:medifys_app/pages/util/profile_dialogue/pop_menu_items.dart';

class PopoverBtn extends StatelessWidget{
  const PopoverBtn({super.key});

  @override
  Widget build(BuildContext context){
    return GestureDetector( //to enable tapping on
    //  onTap: () {}, //originally
    // onTap:() => showPopover(context: context, bodyBuilder: bodyBuilder),  // replacing bodybuilder
    onTap:() => showPopover(
      context: context, 
      bodyBuilder: (context) => const PopMenuItems(),      //context points to menu_items.dart
      width: 250,
      height:150,
      backgroundColor: Colors.deepPurple.shade300,
      direction: PopoverDirection.top,
    ),     
     child: const Icon(         //added const in front of icon
      Icons.arrow_drop_down_circle_outlined, 
      color: AppColors.blackColor,
      ), 
    );
  }
}