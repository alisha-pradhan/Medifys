import 'package:flutter/material.dart';
import 'package:medifys_app/pages/doc_rec/doc_rec_page.dart';
import 'package:medifys_app/pages/gemini_chatbot/gemini_bot.dart';
import 'package:medifys_app/pages/shop/shop_page.dart';

class BottomNavBar extends StatefulWidget {
  final int selectedIndex; // creating fns
  final Function(int) onItemTap;

  BottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTap,
  });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  // Creating instances of your pages
  final DocRecPage docRecPage = DocRecPage();
  final GeminiBotPage geminiBotPage = GeminiBotPage();
  final ShopPage shopPage = ShopPage();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.tab),
            label: 'Tab 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tab),
            label: 'Tab 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tab),
            label: 'Tab 3',
          ),
        ],

        currentIndex: widget.selectedIndex, // call fn selectedIndex
        onTap: (index) {
          widget.onItemTap(index); // call fn onItemTap

          // condition to navigate to different pages (based on index)
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => DocRecPage()),
            );
          } else if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => GeminiBotPage()),
            );
          } else if (index == 2) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ShopPage()),
            );
          }
        },
      ),
    );
  }
}
