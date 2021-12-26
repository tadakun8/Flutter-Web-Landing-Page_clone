import 'package:flutter/material.dart';
import 'package:flutter_web_landingpage_clone/components/large_body.dart';
import 'package:flutter_web_landingpage_clone/components/navbar.dart';
import 'package:flutter_web_landingpage_clone/components/small_body.dart';
import 'package:flutter_web_landingpage_clone/shared/responsive_layout.dart';

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
            children: [
              NavBar(),
              const ResponsiveLayout(
                largeScreen: LargeBody(),
                smallScreen: SmallBody(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
