import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String text;
  final Color textColor;
  final bool? isExpandable;
  final bool? isAddable;
  final Color? buttonColor;

  const Heading(
      {super.key,
      required this.text,
      required this.textColor,
      this.isExpandable = false,
      this.isAddable = false,
      this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            textAlign: TextAlign.left,
            style: TextStyle(
              letterSpacing: 1.5,
              color: textColor,
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          IconButton(
            iconSize: 20,
            onPressed: () {},
            icon: isExpandable!
                ? Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: buttonColor != null ? buttonColor! : Colors.grey,
                  )
                : isAddable!
                    ? Icon(
                        Icons.add,
                        color: buttonColor != null ? buttonColor! : Colors.grey,
                      )
                    : const Icon(null),
          ),
        ],
      ),
    );
  }
}
