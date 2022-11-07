import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color mainColor;
  final Color borderColor;
  final Function()? action;

  const CustomButton(
      {super.key,
      required this.buttonText,
      required this.mainColor,
      required this.borderColor,
      this.action});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: action,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(mainColor),
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.all(20),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(color: borderColor, width: 5),
          ),
        ),
      ),
      child: Text(
        buttonText,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
      ),
    );
  }
}
