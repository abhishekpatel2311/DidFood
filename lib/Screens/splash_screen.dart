import 'package:didfood/Screens/onboarding1.dart';
import 'package:flutter/material.dart';
import '../backGround_Image.dart';

  class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(seconds: 5), () {});
    Navigator.of(context).pushReplacement(_createRoute());
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
             Onboarding1(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }


  _DisplayWidget(){
    return Container(
      height: 200,
      width: 200,
      color: Colors.black,
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
