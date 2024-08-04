import 'package:didfood/Screens/onboarding1.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../backGround_Image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(seconds: 10), () {});
    Navigator.pushReplacement(
      context,
      PageTransition(
        type: PageTransitionType.rightToLeft,
        child: const Onboarding1(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            const BackImage(),
            Positioned(
              top: (MediaQuery.of(context).size.height - 400.0) / 3,
              left: (MediaQuery.of(context).size.width - 172.0) / 2,
              child: const Image(
                image: AssetImage(
                  'assets/images/Group 1909.png',
                ),
                width: 172.0,
                height: 328.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
