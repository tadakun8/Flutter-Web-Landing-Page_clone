import 'package:flutter/material.dart';
import 'package:flutter_web_landingpage_clone/components/search.dart';

class LargeBody extends StatelessWidget {
  const LargeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: [
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: 0.6,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 48,
              ),
              child: Image.asset(
                'lib/assets/image_01.png',
                scale: 0.85,
              ),
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: 0.6,
            child: Padding(
              padding: const EdgeInsets.only(left: 48),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hello!',
                    style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat-Regular",
                        color: Color(0xFF8591B0)),
                  ),
                  RichText(
                    text: const TextSpan(
                      text: 'Welcom To ',
                      style: TextStyle(
                        fontSize: 60,
                        color: Color(0xFF8591B0),
                      ),
                      children: [
                        TextSpan(
                          text: "Britu",
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 12.0, top: 20),
                    child: Text("LET’S EXPLORE THE WORLD"),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Search()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
