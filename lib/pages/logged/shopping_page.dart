import 'package:familist/pages/components/heading.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../components/rounded_squares.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        const SizedBox(
          height: 80,
        ),
        const Heading(
          text: "URGENT",
          textColor: kUrgentColor,
          isAddable: true,
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
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: size.height * (1 / 2),
              decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
              ),
              child: Center(
                child: Column(
                  children: [
                    // dynamic
                    const Padding(
                      padding: EdgeInsets.only(left: 8, top: 15, bottom: 10),
                      child: Heading(
                        text: "SHOPPING LIST",
                        textColor: Colors.white,
                        isAddable: true,
                        buttonColor: Colors.white,
                      ),
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
                      squareText: "Sendok",
                      tagColor: kSecondaryColor2,
                      squareColor: Colors.white,
                      tagText1: "Added By JOWNA",
                      tagColor1: Colors.grey[400]!,
                      tagText2: "Mon, 14 Dec 2022",
                      tagColor2: Colors.green[100]!,
                      tagFontColor2: Colors.green,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
