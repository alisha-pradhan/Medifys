// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:medifys_app/assets/colors/colors.dart';
import 'package:medifys_app/pages/doc_rec/doc_util/add_doc.dart';
import 'package:medifys_app/pages/doc_rec/doc_util/doc_blank.dart';

class DocRecPage extends StatefulWidget {
  const DocRecPage({super.key});

  @override
    State<DocRecPage> createState() => _MedRemState();
}

class _MedRemState extends State<DocRecPage> {


//------------------------------------------------------------------------------------------------------------------------

// var image;
// List imageArray=[]; 

// _openGallery() async{
//   image = await ImagePicker.pickImage(source: ImageSource.camera);
//   imageArray.add(image);
//   setState(() {
//     imageArray;
//   });
// }

  // var image;
  // List imageArray = [];

  // Future<void> _openGallery() async {
  //   final pickedImage = await ImagePicker().pickImage(source: ImageSource.camera);
  //   if (pickedImage != null) {
  //     setState(() {
  //       image = pickedImage;
  //       imageArray.add(image);
  //     });
  //   }
  // }

//------------------------------------------------------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.whiteColor,

      // body: Container(
      //   child: Column(
      //     children: <Widget>[
      //       Container(
      //         child: Center(
      //           child: FloatingActionButton(
      //             onPressed: (){
      //               _openGallery();
      //             },
      //             backgroundColor: AppColors.blueColor,
      //             child: Container(
      //               child: Icon(
      //                 Icons.add,
      //                 color: AppColors.whiteColor,
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
            
      //       Container(
      //         child: imageArray.isEmpty ? Center(child: DocBlank()) : GridView.count(crossAxisCount: 3)
      //       )
      //     ],
          
      //   ),
      // ),
      

      body:Container(
        child: DocBlank()
      ),

      floatingActionButton:FloatingActionButton(
        onPressed: () {
          // Show the AddTile Dialog
          showDialog(
            context: context,
            builder: (context) => AddDoc(),
          );
        },
        backgroundColor: AppColors.blueColor,
        child: Icon(
          Icons.add_rounded,
          color: AppColors.whiteColor,
         ),
      ),
    );
  }
}




