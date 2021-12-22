import 'package:flutter/material.dart';
import 'package:flutter_web_landingpage_clone/components/body.dart';
import 'package:flutter_web_landingpage_clone/components/navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xFFF8FBFF),
          Color(0xFFFCFDFD),
        ]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [NavBar(), Body()],
          ),
        ),
      ),
    );
  }
}
