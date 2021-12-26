import 'package:flutter/material.dart';
import 'package:flutter_web_landingpage_clone/components/search.dart';

class SmallBody extends StatelessWidget {
  const SmallBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Hello!',
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontFamily: "Montserrat-Regular",
                color: Color(0xFF8591B0)),
          ),
          RichText(
            text: const TextSpan(
              text: 'Welcom To ',
              style: TextStyle(
                fontSize: 40,
                color: Color(0xFF8591B0),
              ),
              children: [
                TextSpan(
                  text: "Britu",
                  style: TextStyle(
                    fontSize: 40,
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
          const SizedBox(height: 30),
          Center(
            child: Image.asset(
              'lib/assets/image_01.png',
              scale: 1,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          const Search(),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
