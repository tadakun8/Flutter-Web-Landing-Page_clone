import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  const ResponsiveLayout(
      {Key? key,
      required this.largeScreen,
      this.mediumScreen,
      this.smallScreen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      // Original is below
      // if (constraints.maxWidth >= 1200) return largeScreen;
      // if (constraints.maxWidth < 1200 && constraints.maxWidth >= 800) {
      //   return mediumScreen ?? largeScreen;
      // }
      // return smallScreen ?? largeScreen;
      final displayWidth = MediaQuery.of(context).size.width;
      if (displayWidth >= 1200) return largeScreen;
      if (displayWidth < 1200 && displayWidth >= 800) {
        return mediumScreen ?? largeScreen;
      }
      return smallScreen ?? largeScreen;
    });
  }
}
