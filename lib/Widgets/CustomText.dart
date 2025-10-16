import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text, required this.fontSize, required this.fontWeight});
   final String text;
   final double fontSize ;
   final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter(
        textStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: Color(0xff416954),
        ),
      ),
    );
  }
}
