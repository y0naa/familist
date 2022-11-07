import 'package:familist/pages/components/custom_button.dart';
import 'package:familist/pages/components/settings_squares.dart';
import 'package:familist/utils/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../login_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: size.height * (1 / 5),
              width: size.width,
              decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(65),
                  bottomRight: Radius.circular(65),
                ),
              ),
            ),
            Positioned(
              bottom: -200,
              left: size.width * (1 / 3),
              right: size.width * (1 / 3),
              child: const CircleAvatar(
                radius: 200,
                backgroundColor: kSecondaryColor2,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 85,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(
              width: 15,
            ),
            Text(
              "JOWNA",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.edit,
              size: 18,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const SettingsSquare(
          upperText: "Email",
          lowerText: "ajownaa@gmail.com",
          isEditable: true,
        ),
        const SettingsSquare(
          upperText: "Phone Number",
          lowerText: "082110788109",
          isEditable: true,
        ),
        const SettingsSquare(
          upperText: "Family",
          lowerText: "SHEESH FAMILY",
          isExpandable: true,
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(
              buttonText: "Logout",
              mainColor: const Color.fromARGB(255, 153, 146, 253),
              borderColor:
                  const Color.fromARGB(255, 201, 198, 240).withOpacity(0.2),
              action: () async {
                await FirebaseAuth.instance.signOut();
                // ignore: use_build_context_synchronously
                Navigator.of(context).pushReplacementNamed("/login");
              },
            ),
            CustomButton(
              buttonText: "Swith Accounts",
              mainColor: const Color.fromARGB(255, 153, 146, 253),
              borderColor:
                  const Color.fromARGB(255, 201, 198, 240).withOpacity(0.2),
            ),
          ],
        ),
      ],
    );
  }
}
