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

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 800 &&
        MediaQuery.of(context).size.width < 1200;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      // Original is below
      // if (constraints.maxWidth >= 1200) return largeScreen;
      // if (constraints.maxWidth < 1200 && constraints.maxWidth >= 800) {
      //   return mediumScreen ?? largeScreen;
      // }
      // return smallScreen ?? largeScreen;
      if (isLargeScreen(context)) return largeScreen;
      if (isMediumScreen(context)) {
        return mediumScreen ?? largeScreen;
      }
      return smallScreen ?? largeScreen;
    });
  }
}
