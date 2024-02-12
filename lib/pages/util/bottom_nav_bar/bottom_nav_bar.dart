import 'package:flutter/material.dart';
import 'package:medifys_app/pages/doc_rec/doc_rec_page.dart';
import 'package:medifys_app/pages/gemini_chatbot/gemini_bot.dart';
import 'package:medifys_app/pages/shop/shop_page.dart';

class BottomNavBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemTap;
  final Color tabBarViewColor;

  BottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTap,
    required this.tabBarViewColor,
  });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final DocRecPage docRecPage = DocRecPage();
  final GeminiBotPage geminiBotPage = GeminiBotPage();
  final ShopPage shopPage = ShopPage();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.tabBarViewColor,
      child: TabBarView(
        children: [
          docRecPage,
          geminiBotPage,
          shopPage,
        ],
      ),
    );
  }
}