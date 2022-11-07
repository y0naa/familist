import 'package:familist/pages/components/tag_labels.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class RoundedSquares extends StatefulWidget {
  final String squareText;
  final Color tagColor;
  final Color squareColor;
  final String tagText1;
  final Color tagColor1;
  final String tagText2;
  final Color tagColor2;
  final Color tagFontColor2;
  final bool? isCheckbox;

  const RoundedSquares(
      {super.key,
      required this.squareColor,
      required this.tagText1,
      required this.tagColor1,
      required this.tagText2,
      required this.tagColor2,
      required this.tagFontColor2,
      required this.squareText,
      this.isCheckbox = false,
      required this.tagColor});

  @override
  State<RoundedSquares> createState() => _RoundedSquaresState();
}

class _RoundedSquaresState extends State<RoundedSquares> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 10, top: 5),
      child: ClipPath(
        clipper: const ShapeBorderClipper(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: widget.squareColor,
            border: Border(
              right: BorderSide(
                color: widget.tagColor,
                width: 20,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  widget.isCheckbox!
                      ? SizedBox(
                          height: 20,
                          width: 25,
                          child: Checkbox(
                              value: isChecked,
                              shape: const CircleBorder(),
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              }),
                        )
                      : const SizedBox.shrink(),
                  Text(
                    widget.squareText,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              TagLabels(
                text: widget.tagText1,
                fontColor: Colors.black87,
                bgColor: widget.tagColor1,
              ),
              TagLabels(
                text: widget.tagText2,
                fontColor: widget.tagFontColor2,
                bgColor: widget.tagColor2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
