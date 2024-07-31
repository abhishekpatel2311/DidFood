import 'package:didfood/backGround_Image.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../signup_page.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const BackImage(),
            SingleChildScrollView(
              child: Column(
                  children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 123.0),
                    child: Image(
                      image: AssetImage(
                        'assets/images/Group 1912.png',
                      ),
                      height: 370.0,
                      width: double.infinity,
                    ),
                  ),
                  const SizedBox(height: 66.0),
                  const Text(
                    'DIDFOOD is Where Your\nComfort Food Lives',
                    style: TextStyle(
                      fontFamily: 'Bentonsans_Bold',
                      fontSize: 22.0,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    'Enjoy a fast and smooth food delivery at\nyour doorstep',
                    style: TextStyle(
                      fontFamily: 'Bentonsans_Book',
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 42.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF6B50F6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        fixedSize: const Size(157, 57)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: const SignupMain(),
                        ),
                      );
                    },
                    child: const Center(
                      child: Text(
                        'Next',
                        style: TextStyle(
                          fontFamily: 'BentonSans_Bold',
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
