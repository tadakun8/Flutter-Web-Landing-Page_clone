import 'package:flutter/material.dart';
import 'package:flutter_web_landingpage_clone/shared/responsive_layout.dart';

class SendBtn extends StatelessWidget {
  const SendBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFFC86DD7),
            Color(0xFF3023AE),
          ],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF6078ea).withOpacity(.3),
            offset: const Offset(0.0, 8.0),
            blurRadius: 8.0,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          // inkWellのsplashの範囲を上記円形の範囲に合わせる
          // 指定しなければ、splashがContainerのデフォルトとなる四角形になる
          borderRadius: BorderRadius.circular(20),
          onTap: () {},
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Notify',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Montserrat-Bold",
                    fontSize: ResponsiveLayout.isSmallScreen(context)
                        ? 12
                        : ResponsiveLayout.isMediumScreen(context)
                            ? 12
                            : 20,
                  ),
                ),
                SizedBox(
                  width: ResponsiveLayout.isSmallScreen(context)
                      ? 4
                      : ResponsiveLayout.isMediumScreen(context)
                          ? 6
                          : 8,
                ),
                Icon(
                  Icons.send,
                  color: Colors.white,
                  size: ResponsiveLayout.isSmallScreen(context)
                      ? 12
                      : ResponsiveLayout.isMediumScreen(context)
                          ? 12
                          : 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
