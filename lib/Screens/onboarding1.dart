import 'package:didfood/Screens/onboarding2.dart';
import 'package:flutter/material.dart';
import '../backGround_Image.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

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
                    padding: EdgeInsets.only(top: 107.0),
                    child: Image(
                      image: AssetImage(
                        'assets/images/Group 1911.png',
                      ),
                      height: 398.0,
                      width: double.infinity,
                    ),
                  ),
                  const SizedBox(height: 48.0),
                  const Text(
                    'Find your Comfort\nFood here',
                    style: TextStyle(
                      fontFamily: 'Bentonsans_Bold',
                      fontSize: 22.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    'Here You Can find a chef or dish for every\ntaste and color. Enjoy!',
                    style: TextStyle(
                      fontFamily: 'Bentonsans_Book',
                      fontSize: 12.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 48.0),
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
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const Onboarding2(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            const begin = Offset(0.0, 1.0);
                            const end = Offset.zero;
                            const curve = Curves.ease;

                            var tween = Tween(begin: begin, end: end)
                                .chain(CurveTween(curve: curve));

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
