import 'package:didfood/backGround_Image.dart';
import 'package:flutter/material.dart';


import '../signup_page.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                      Navigator.pushReplacement(
                        context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) => const SignupMain(),
                            transitionsBuilder: (context, animation, secondaryAnimation, child) {
                              const begin = Offset(0.0, 1.0);
                              const end = Offset.zero;
                              const curve = Curves.ease;

                              var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

                              return SlideTransition(
                                position: animation.drive(tween),
                                child: child,
                              );
                            },
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
