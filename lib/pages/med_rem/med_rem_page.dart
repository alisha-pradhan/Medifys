// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:medifys_app/assets/colors/colors.dart';
import 'package:medifys_app/pages/doc_rec/doc_rec_page.dart';
import 'package:medifys_app/pages/gemini_chatbot/gemini_bot.dart';
import 'package:medifys_app/pages/shop/shop_page.dart';
import 'package:medifys_app/pages/med_rem/med_tile.dart';


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

  //text controller


  //list of to-do tasks
  

  //save new task
  

  //create a new task
  

  //delete task
 List<String> tileData = ['Med1', 'Med2', 'Med3'];

  void addTile() {
    setState(() {
      tileData.add('New Med ${tileData.length + 1}');
    });
  }

  //------------------------------------------------------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.whiteColor,

    

    body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              itemCount: tileData.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              padding: EdgeInsets.all(20),
              itemBuilder: (context, index) {
                return GridTile(
                  child: Card(
                    child: Center(
                      child: Text(tileData[index]),
                    ),
                  ),

                   footer: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20), // Rounded corners
                      ),
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Footer Title ${index + 1}',
                        textAlign: TextAlign.center,
                      ),
                  ),
                );
              },
            ),
          ),
        ],
      ),


    

          floatingActionButton:FloatingActionButton(
            onPressed: addTile,
            backgroundColor: AppColors.blueColor,
            child: Icon(
              Icons.add_rounded,
              color: AppColors.whiteColor,
              )
          ),

    );
  }
}




