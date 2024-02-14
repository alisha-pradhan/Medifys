//this page redirects to home page, i.e, med_rem_page
//main entry point of the app

import 'package:flutter/material.dart';
import 'package:medifys_app/pages/base_page.dart';
import 'package:google_fonts/google_fonts.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BasePage(), //redirects to MedRemPage
      theme: ThemeData(
        fontFamily: GoogleFonts.dmSans().fontFamily,
      ),
    );
  }
}
