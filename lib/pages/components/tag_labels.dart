import 'package:flutter/material.dart';
import 'package:rounded_background_text/rounded_background_text.dart';

class TagLabels extends StatelessWidget {
  final String text;
  final Color fontColor;
  final Color bgColor;
  const TagLabels(
      {super.key,
      required this.text,
      required this.fontColor,
      required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: RoundedBackgroundText(
        text,
        innerRadius: 20,
        outerRadius: 20,
        style: TextStyle(
          fontSize: 12,
          fontFamily: "Montserrat",
          color: fontColor,
          fontWeight: FontWeight.w600,
        ),
        backgroundColor: bgColor,
      ),
    );
  }
}
