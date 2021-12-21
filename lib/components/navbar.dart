import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final navLinks = ["Home", "Products", "Features", "Contact"];

  NavBar({Key? key}) : super(key: key);

  List<Widget> navItem() {
    return navLinks.map((linkText) {
      return Padding(
        padding: const EdgeInsets.only(left: 18),
        child: Text(
          linkText,
          style: const TextStyle(fontFamily: "Montserrat-Bold"),
        ),
      );
    }).toList();
  }

  Widget loginButton() {
    return InkWell(
      hoverColor: Colors.transparent,
      onTap: () {},
      child: Container(
        width: 120,
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
              offset: const Offset(0, 8),
              blurRadius: 8,
            )
          ],
        ),
        child: const Material(
          color: Colors.transparent,
          child: Center(
            child: Text(
              'login',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                letterSpacing: 1,
                fontFamily: "Montserrat-Bold",
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFC86DD7),
                      Color(0xFF3023AE),
                    ],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                  ),
                ),
                child: const Center(
                  child: Text("B",
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              const Text("Britu", style: TextStyle(fontSize: 26))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [...navItem(), const SizedBox(width: 16), loginButton()],
          )
        ],
      ),
    );
  }
}
