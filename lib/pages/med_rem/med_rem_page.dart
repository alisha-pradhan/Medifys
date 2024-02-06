// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:medifys_app/assets/colors/colors.dart';
import 'package:medifys_app/pages/doc_rec/doc_rec_page.dart';
import 'package:medifys_app/pages/gemini_chatbot/gemini_bot.dart';
import 'package:medifys_app/pages/med_rem/profile_dialog.dart';
import 'package:medifys_app/pages/shop/shop_page.dart';


class MedRemPage extends StatefulWidget {
  const MedRemPage({super.key});

  @override
    State<MedRemPage> createState() => _MedRemState();
}

class _MedRemState extends State<MedRemPage> {

  //method to update the selected index
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void createNewMed(){}

  //this keeps track of the selected page index
  int _selectedIndex =0;

  //page list for navigating in Bottom Nav Bar
  final List _pages= [
    DocRecPage(),    //doc rec page
    GeminiBotPage(),    //chatbot page
    ShopPage(),    //shop page

  ];

  //------------------------------------------------------------------------------------------------------------------------

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
              color:AppColors.whiteColor,
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
              icon: Icon(Icons.account_circle),
              color:AppColors.whiteColor,
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

      body: ListView(
        children: [
          Expanded(
            //to navigate thru the bottom nav bar
            child: _pages[_selectedIndex], //call List
          ),

          Expanded(
            child: GridView(),
          ),
        ],
      ),

      //bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, //setting index on tap
        onTap: _navigateBottomBar,  //on tap call fn _navigateBottomBar
        backgroundColor: AppColors.blueColor,
        selectedItemColor: AppColors.whiteColor, // Color for the selected item
        unselectedItemColor: AppColors.greyColor, // Color for unselected items
        items: [
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

      //button
      floatingActionButton: FloatingActionButton(
        onPressed: createNewMed , //calling fn createNewMed
        child: Icon(Icons.add_rounded),
        backgroundColor: AppColors.blueColor,
      ),



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