import 'package:flutter/material.dart';

class SettingsSquare extends StatelessWidget {
  final String upperText;
  final String lowerText;
  final bool? isEditable;
  final bool? isExpandable;

  const SettingsSquare(
      {super.key,
      required this.upperText,
      required this.lowerText,
      this.isEditable = false,
      this.isExpandable = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25,
        right: 25,
        bottom: 5,
        top: 10,
      ),
      child: Container(
        //width: size.width / 2,
        padding: const EdgeInsets.only(
          top: 15,
          bottom: 15,
          left: 15,
          right: 15,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    upperText,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  lowerText,
                  style: TextStyle(
                    color: Colors.grey[700]!,
                  ),
                ),
              ],
            ),
            isEditable!
                ? const Icon(Icons.edit)
                : isExpandable!
                    ? const Icon(Icons.arrow_forward_ios_rounded)
                    : const Icon(null)
          ],
        ),
      ),
    );
  }
}
