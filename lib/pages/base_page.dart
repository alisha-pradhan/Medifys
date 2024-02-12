//created this page since issue in navigation and routes
//till we figure it out, for the time being, base_page will be our landing page, navigating through all othger pages

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:medifys_app/assets/colors/colors.dart';
import 'package:medifys_app/pages/med_rem/med_rem_page.dart';
import 'package:medifys_app/pages/doc_rec/doc_rec_page.dart';
import 'package:medifys_app/pages/gemini_chatbot/gemini_bot.dart';
import 'package:medifys_app/pages/util/profile_dialogue/profile_dialog.dart';
import 'package:medifys_app/pages/shop/shop_page.dart';


class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
    State<BasePage> createState() => _BaseState();
}

class _BaseState extends State<BasePage> {

  //method to update the selected index
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void createNewMed(){}

  //this keeps track of the selected page index
  int _selectedIndex =0;

  //page list for Bottom Nav Bar
  final List _pages= [
    MedRemPage(),   //med rem page
    DocRecPage(),    //doc rec page
    GeminiBotPage(),    //chatbot page
    ShopPage(),    //shop page

  ];

  //

  //------------------------------------------------------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blueColor,
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.home),
              color:AppColors.whiteColor,
                onPressed: () {
                  // Redirect to Base
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MedRemPage()));
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
              icon: Icon(Icons.account_circle),
              color:AppColors.whiteColor,
              onPressed: () {
              // Show the ProfileDialog
                showDialog(
                  context: context,
                  builder: (context) => ProfileDialog(),
                );
              },
            ) ,
          ],
      ),

      body: Column(
        children: [
          Expanded(
            //to navigate thru the bottom nav bar
            child: _pages[_selectedIndex], //call List
          ),
        ],
      ),

           //bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, //nav bar bg color was applying on only 3 items, but to increase for its range, type: BottomNavigationBarType.fixed  
        currentIndex: _selectedIndex, //setting index on tap
        onTap: _navigateBottomBar,  //on tap call fn _navigateBottomBar
        backgroundColor: AppColors.blueColor,
        selectedItemColor: AppColors.whiteColor, // Color for the selected item
        unselectedItemColor: AppColors.greyColor, // Color for unselected items
        items: [          
          BottomNavigationBarItem(
            icon: Icon(Icons.alarm_rounded),
            label: 'Reminder'
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts_rounded),
            label: 'Doctor'
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assistant_rounded),
            label: 'Assistant'
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_rounded),
            label: 'Shop'
            ),

        ],
      ),
  
    );
  }
}
