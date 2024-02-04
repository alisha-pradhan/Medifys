//this page redirects to home page, i.e, med_rem_page

import 'package:flutter/material.dart';
import 'package:medifys_app/pages/med_rem_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MedRemPage(), //redirects to MedRemPage
    );
  }
}
