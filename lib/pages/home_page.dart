import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'animations/change_screen_animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Signed in as ${user.email}"),
            MaterialButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              color: Colors.deepPurpleAccent,
              child: const Text("Sign out"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.black87,
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) {},
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
