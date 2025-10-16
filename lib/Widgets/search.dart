import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container(
        width: 362, height: 52,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color : Colors.grey,
              width: 1.1,
            )
        ),
        child: Row(
          children: [
            Gap(15),
            Image.asset('assets/HomePage/icon_search.png' , width: 20,),
            Gap(10),
            Text('Search for furniture' , style: GoogleFonts.inter(
              textStyle: TextStyle(
                fontSize: 17,
                color : Color(0xff828282),
              ),
            ),),
            Gap(80),
            Image.asset('assets/HomePage/Line 1.png' , height: 28,),
            Gap(20),
            Image.asset('assets/HomePage/geune.png' , height: 28,),
          ],
        ),
      ),
    );
  }
}
