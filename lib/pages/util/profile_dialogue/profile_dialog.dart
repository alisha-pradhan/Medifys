//This is the Profile button, which pops up a dialog box
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:medifys_app/assets/colors/colors.dart';
import 'package:medifys_app/pages/analytics/analyticsPage.dart';
import 'package:medifys_app/pages/settings/settings.dart';
import 'package:popover/popover.dart';
import 'package:medifys_app/pages/util/profile_dialogue/popover_button.dart';
import 'package:medifys_app/pages/settings/settings.dart';
import 'package:medifys_app/pages/analytics/analyticsPage.dart';


class ProfileDialog extends StatelessWidget{
  const ProfileDialog({super.key});

  @override
  Widget build(BuildContext context){
    return Dialog(
      child: Container(
        height: 310,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(36),
        ),
        child: Column(        //column is the child of container
          mainAxisSize: MainAxisSize.min,
          children: [

            //title bar
            Title(
              color: AppColors.whiteColor,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:EdgeInsets.all(5),
                      child: Icon(
                        Icons.home,
                        size: 30,
                        color:AppColors.blackColor,
                      ),
                    ),
                    Text(
                      'Medifys',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: AppColors.blackColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //email bar
            Padding(
              padding: EdgeInsets.all(2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
              
                  //user profile icon
                  Padding(
                    padding:EdgeInsets.all(5),
                    child: Icon(
                      Icons.account_circle,
                      size: 30,
                      color:AppColors.blackColor,
                      )
                  ),
              
                  //name and email
                  Column(
                    children: [
                      Text(
                        'Jane Doe',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: AppColors.blackColor,
                        ),
                      ),
                      Text(
                        'janedoe123@gmail.com',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: AppColors.greyColor,
                        ),
                      ),
                    ],
                  ),     
                         
                  //popover button
                  PopoverBtn(),

                ],
              ),
            ),

            //redirect tiles to analytics, settings and feedback pages
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
              child: Column(
                children: [  
              
                  //elements container, sizedbox, row used explicitily
              
                  //analytics
                  MaterialButton(
                     onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AnalyticsPage()),
                      );
                    },
                    child: Container(       //container to give it hight and color
                      height: 50,
                      color: AppColors.whiteColor,
                      child: SizedBox(         //sizedbox for containing Row
                        child: Row(            //Row to contained elements side by side
                          children: [
                            //icon
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: Icon(
                                Icons.auto_graph_rounded,
                                size: 30,
                                color: AppColors.blueColor,
                              ),
                            ),
                            Text(
                              'Analytics',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: AppColors.blackColor,
                              ),
                            )
                            
                          ],
                        ),
                      ),
                    ),
                  ),

                  //Settings
                  MaterialButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SettingsPage()),
                      );
                    },
                    child: Container(       //container to give it hight and color
                      height: 50,
                      color: AppColors.whiteColor,
                      child: SizedBox(         //sizedbox for containing Row
                        child: Row(            //Row to contained elements side by side
                          children: [
                            //icon
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: Icon(
                                Icons.settings,
                                size: 30,
                                color: AppColors.blueColor,
                              ),
                            ),
                            Text(
                              'Settings',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: AppColors.blackColor,
                              ),
                            )
                            
                          ],
                        ),
                      ),
                    ),
                  ),

                  //Help and feedback
                  MaterialButton(
                    onPressed: (){},
                    child: Container(       //container to give it hight and color
                      height: 50,
                      color: AppColors.whiteColor,
                      child: SizedBox(         //sizedbox for containing Row
                        child: Row(            //Row to contained elements side by side
                          children: [
                            //icon
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: Icon(
                                Icons.help_outline_rounded,
                                size: 30,
                                color: AppColors.blueColor,
                              ),
                            ),
                            Text(
                              'Help and Feedback',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: AppColors.blackColor,
                              ),
                            )
                            
                          ],
                        ),
                      ),
                    ),
                  ),
                  
                ],
              ),
            )
          ],   
        ),
      ),

    );


  }
}