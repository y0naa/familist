import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:familist/pages/logged/shopping_page.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'logged/home_page.dart';
import 'logged/profile_page.dart';
import 'logged/reminders_page.dart';

class SuperPage extends StatefulWidget {
  const SuperPage({super.key});

  @override
  State<SuperPage> createState() => _SuperPageState();
}

class _SuperPageState extends State<SuperPage> {
  final List<Widget> _pages = [
    HomePage(),
    const ShoppingPage(),
    const RemindersPage(),
    const ProfilePage(),
  ];
  int _activePage = 0;
  Color navColor = kBackgroundColor;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_activePage],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: navColor,
        color: kPrimaryColor2,
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            _activePage = index;
            if (index == 1 || index == 2) {
              navColor = kPrimaryColor;
            } else {
              navColor = kBackgroundColor;
            }
          });
        },
        items: const [
          Icon(
            Icons.home_rounded,
            color: Colors.white,
          ),
          Icon(Icons.shopping_bag, color: Colors.white),
          Icon(Icons.notifications, color: Colors.white),
          Icon(Icons.person, color: Colors.white)
        ],
      ),
    );
  }
}
