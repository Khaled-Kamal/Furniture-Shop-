import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSeller extends StatelessWidget {
  const CustomSeller({super.key,  required this.rate, required this.title, required this.subtitle, required this.price, required this.image});

   final String image;
   final String rate;
   final String title;
   final String subtitle;
   final String price;

  @override
  Widget build(BuildContext context) {
    return  IntrinsicWidth(
      child: Card(
        color : Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 115, height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color :Color(0xffE3E3E3),
                ),
                child: Row(
                  children: [

                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(image , width: 90,),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: Container(
                            width: 35,
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffFFF0BA),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 12,
                                  color: Colors.orange,
                                ),
                                Text(
                                  rate,
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(17),
                Text(
                  title,
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

                Text(
                  subtitle,
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(fontSize: 12, color: Color(0xff828282)),
                  ),
                ),

                Row(
                  children: [
                    Text(
                      '₹$price ',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Gap(40),
                    Container(
                      height: 47,
                      width: 47,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff416954),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset('assets/HomePage/+.png'),
                      ),
                    ),
                  ],
                ),

              ],
            ),

            Gap(10),
          ],

        ),
      ),
    );
  }
}
