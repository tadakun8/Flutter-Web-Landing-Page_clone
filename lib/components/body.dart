import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: [
          FractionallySizedBox(
            alignment: Alignment.center,
            widthFactor: 0.6,
            child: Image.asset(
              'lib/assets/image_01.png',
              scale: 0.85,
            ),
          )
        ],
      ),
    );
  }
}
