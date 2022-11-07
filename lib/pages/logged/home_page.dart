import 'package:familist/pages/components/heading.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import '../components/rounded_squares.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: size.height * (1 / 5),
          decoration: const BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(65),
              bottomRight: Radius.circular(65),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundColor: kSecondaryColor2,
                  radius: 35,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "Hello, ${user.email}!",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Center(
            child: Text(
              "Added by you",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        const Heading(
          text: "SHOPPING LIST",
          textColor: Colors.black87,
          isExpandable: true,
        ),
        RoundedSquares(
          isCheckbox: true,
          squareText: "Sendok",
          tagColor: kSecondaryColor2,
          squareColor: Colors.white,
          tagText1: "Added By JOWNA",
          tagColor1: Colors.grey[400]!,
          tagText2: "Mon, 14 Dec 2022",
          tagColor2: Colors.green[100]!,
          tagFontColor2: Colors.green,
        ),
        RoundedSquares(
          isCheckbox: true,
          squareText: "Sosis Sonice",
          tagColor: kUrgentColor,
          squareColor: kButtonWhiteGray,
          tagText1: "Added By NYOKAP",
          tagColor1: Colors.grey[400]!,
          tagText2: "Mon, 14 Dec 2022",
          tagColor2: Colors.green[100]!,
          tagFontColor2: Colors.green,
        ),
        const Heading(
          text: "REMINDERS",
          textColor: Colors.blueGrey,
          isExpandable: true,
        ),
        RoundedSquares(
          squareText: "Mandiin Ciko Ceri",
          tagColor: kReminderColor,
          squareColor: Colors.white,
          tagText1: "Added By JOWNA",
          tagColor1: Colors.orange,
          tagText2: "Mon, 14 Dec 2022",
          tagColor2: Colors.red[100]!,
          tagFontColor2: Colors.red,
        ),
        RoundedSquares(
          squareText: "Ambil Laundry",
          tagColor: kReminderColor,
          squareColor: Colors.white,
          tagText1: "Added By JOWNA",
          tagColor1: Colors.orange,
          tagText2: "Mon, 14 Dec 2022",
          tagColor2: Colors.red[100]!,
          tagFontColor2: Colors.red,
        ),
      ],
    );
  }
}
