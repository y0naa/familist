import 'package:familist/pages/animations/change_screen_animation.dart';
import 'package:familist/utils/constants.dart';
import 'package:familist/utils/helper_functions.dart';
import 'package:flutter/material.dart';

import 'login_content.dart';

class BottomText extends StatefulWidget {
  const BottomText({super.key});

  @override
  State<BottomText> createState() => _BottomTextState();
}

class _BottomTextState extends State<BottomText> {
  @override
  void initState() {
    ChangeScreenAnimation.bottomTextAnimation.addStatusListener(
      (status) {
        if (status == AnimationStatus.completed) {
          setState(() {});
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HelperFunctions.wrapWithAnimatedBuilder(
      animation: ChangeScreenAnimation.bottomTextAnimation,
      child: GestureDetector(
        onTap: () {
          if (!ChangeScreenAnimation.isPlaying) {
            ChangeScreenAnimation.currentScreen == Screens.createAccount
                ? ChangeScreenAnimation.forward()
                : ChangeScreenAnimation.reverse();
            ChangeScreenAnimation.currentScreen =
                Screens.values[1 - ChangeScreenAnimation.currentScreen.index];
          }
        },
        behavior: HitTestBehavior.opaque,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: RichText(
            text: TextSpan(
              style: const TextStyle(
                fontSize: 16,
                fontFamily: 'Monstserrat',
              ),
              children: [
                TextSpan(
                  text: ChangeScreenAnimation.currentScreen ==
                          Screens.createAccount
                      ? 'Already have an account?'
                      : 'Dont\'t have an account?',
                  style: const TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: ChangeScreenAnimation.currentScreen ==
                          Screens.createAccount
                      ? 'Log In'
                      : 'Sign Up',
                  style: const TextStyle(
                    color: kSecondaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
