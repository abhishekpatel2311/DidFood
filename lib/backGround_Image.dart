import 'package:flutter/material.dart';

class BackImage extends StatelessWidget {
  const BackImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/Pattern.png'),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter),
      ),
    );
  }
}
