import 'package:flutter/material.dart';
import 'package:furnitue_shop/Pages/HomePage.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/onboarding/onboarding.png'),
          Gap(23),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Enjoy Your Online\nShopping.',
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff243B31),
                ),
              ),
            ),
          ),
          Gap(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Browser through all categories and shop the best furniture\nfor your dream house',
              style: GoogleFonts.inter(
                textStyle: TextStyle(fontSize: 13, color: Color(0xff243B31)),
              ),
            ),
          ),
          Gap(25),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (c) => HomePage()),
                );
              },
              child: Container(
                width: 370,
                height: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff2C4939),
                ),
                child: Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
