import 'package:flutter/material.dart';
import 'package:medifys_app/pages/doc_rec/doc_rec_page.dart';
import 'package:medifys_app/pages/gemini_chatbot/gemini_bot.dart';
import 'package:medifys_app/pages/shop/shop_page.dart';

class BottomNavBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemTap;
  final Color tabBarViewColor;

  const BottomNavBar({super.key,
    required this.selectedIndex,
    required this.onItemTap,
    required this.tabBarViewColor,
  });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final DocRecPage docRecPage = const DocRecPage();
  final GeminiBotPage geminiBotPage = const GeminiBotPage();
  final ShopPage shopPage = const ShopPage();

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