import 'package:familist/utils/constants.dart';
import 'package:flutter/material.dart';

import '../components/heading.dart';
import '../components/rounded_squares.dart';

class RemindersPage extends StatelessWidget {
  const RemindersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        const Heading(
          text: "REMINDERS",
          textColor: Colors.black87,
          isAddable: true,
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
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: Container(
            height: size.height * (1 / 2.1),
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            child: Center(
              child: Column(
                children: [
                  // dynamic
                  const Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 5),
                    child: Heading(
                      text: "REPETITIONS",
                      textColor: Colors.white,
                      isAddable: true,
                      buttonColor: Colors.white,
                    ),
                  ),
                  RoundedSquares(
                    squareText: "Mandiin Ciko Ceri",
                    tagColor: kRepetitionsColor,
                    squareColor: Colors.white,
                    tagText1: "Added By JOWNA",
                    tagColor1: Colors.orange,
                    tagText2: "Mon, 14 Dec 2022",
                    tagColor2: Colors.red[100]!,
                    tagFontColor2: Colors.red,
                  ),
                  RoundedSquares(
                    squareText: "Ambil Laundry",
                    tagColor: kRepetitionsColor,
                    squareColor: Colors.white,
                    tagText1: "Added By JOWNA",
                    tagColor1: Colors.orange,
                    tagText2: "Mon, 14 Dec 2022",
                    tagColor2: Colors.red[100]!,
                    tagFontColor2: Colors.red,
                  ),
                  RoundedSquares(
                    squareText: "Perpanjang STNK",
                    tagColor: kRepetitionsColor,
                    squareColor: Colors.white,
                    tagText1: "Added By BOKAP",
                    tagColor1: Colors.orange,
                    tagText2: "Mon, 14 Dec 2022",
                    tagColor2: Colors.red[100]!,
                    tagFontColor2: Colors.red,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
