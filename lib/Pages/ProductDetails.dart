import 'package:flutter/material.dart';
import 'package:furnitue_shop/Pages/HomePage.dart';
import 'package:furnitue_shop/Widgets/CustomText.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key, required this.image, required this.rate, required this.title, required this.subtitle, required this.price});
  final String image;
  final String rate;
  final String title;
  final String subtitle;
  final String price;
  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}
 int selectColor = 0 ;
 int qount = 0 ;

 List<Color> colors = [
   Color(0xff708483),
   Color(0xff626060),
   Color(0xffFF3434),
 ];
class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    double totalPrice  = double.parse(widget.price) * qount;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffE3E3E3),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (c) => HomePage()),
                  );
                },
                child: Image.asset(
                  'assets/ProductDetails/arrow_back.png',
                  width: 50,
                ),
              ),
              Image.asset('assets/ProductDetails/heartAppBar.png', width: 50),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 428,
            height: 430,
            decoration: BoxDecoration(color: Color(0xffE3E3E3)),
            child: Stack(
              children: [
                Positioned(
                  top: 100,
                  left: 80,
                  child: Image.asset(
                    widget.image,
                    width: 250,
                  ),
                ),
                Positioned(
                  bottom: 100,
                  left: 60,
                  child: Image.asset(
                    'assets/ProductDetails/circle.png',
                    width: 300,
                  ),
                ),

                Positioned(
                  bottom: 85,
                  left: 198,
                  child: Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Image.asset(
                      'assets/ProductDetails/arrow-expand2.png',
                    ),
                  ),
                ),

                Positioned(
                  bottom: 60,
                  left: 198,
                  child: Text(
                    '360°',
                    style: TextStyle(color: Color(0xff416954), fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Gap(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title,
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff304E3E),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Container(
                    width: 50,
                    height: 22,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffFFF0BA),
                    ),
                    child: Row(
                      children: [
                        Gap(10),
                        Icon(Icons.star, size: 12, color: Colors.orange),
                        Gap(3),
                        Text(
                          widget.rate,
                          style: TextStyle(color: Colors.orange, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Gap(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              widget.subtitle,
              style: GoogleFonts.inter(
                textStyle: TextStyle(fontSize: 18, color: Color(0xff828282)),
              ),
            ),
          ),

          //The simple and elegant shape makes it very
          // suitable for those for you who like those of you
          // who wants a minimalist room Read More
          Gap(15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text.rich(
              TextSpan(
                style: GoogleFonts.inter(
                  textStyle: TextStyle(fontSize: 15, color: Color(0xff828282)),
                ),
                children: [
                  TextSpan(
                    text:
                        'The simple and elegant shape makes it very\nsuitable for those for you who like those of you\nwho wants a minimalist room',
                  ),
                  TextSpan(
                    text: 'Read More',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff416954),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Gap(20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Container(
                  width: 55, height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset('assets/ProductDetails/1.png'),
                ),
                Container(
                  width: 55, height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset('assets/ProductDetails/2.png'),
                ),
                Container(
                  width: 55, height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset('assets/ProductDetails/3.png'),
                ),
              ],
            ),
          ),
            Gap(15),
          Row(
            children: [

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CustomText(text: 'Color', fontSize: 16, fontWeight: FontWeight.bold),
              ),

               Row(
                 children: List.generate(colors.length, (index){
                   final isSelected = index == selectColor;
                      return GestureDetector(
                        onTap: (){
                          setState(() {
                             selectColor = index;
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeInOut,

                          margin: EdgeInsets.symmetric(horizontal: 5),
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color : isSelected ? colors[index].withOpacity(0.6) : Colors.transparent,
                              width: isSelected ? 3 : 0 ,
                            ),
                          ),
                          child: Container(
                             height: 24, width: 24,
                              decoration: BoxDecoration(
                                color : colors[index],
                                shape: BoxShape.circle,
                              ),
                          ),
                        ),
                      );
                 }),
               ),

               Gap(115),

               Container(
                 width: 76, height: 23,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   color :Color(0xffCDCBCB),
                 ),
                 child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 2),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [

                        GestureDetector(
                          onTap: (){
                            setState(() {
                               qount++;
                            });
                          },
                          child: Container(
                            width: 20, height: 18,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color : Colors.white,
                            ),
                            child: Image.asset('assets/ProductDetails/plus.png' , height: 10,),

                          ),
                        ),

                       Text('$qount' , style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 15 , color : Color(0xff416954),), ),

                       GestureDetector(
                         onTap: (){
                         setState(() {
                           if(qount > 1){
                             qount--;
                           }
                         });
                         },
                         child: Container(
                           width: 20, height: 18,
                           decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             color : Colors.white,
                           ),
                           child: Image.asset('assets/ProductDetails/minus.png' , height: 10,),

                         ),
                       ),
                     ],
                   ),
                 ),
               ),
            ],
          ),

          Gap(17),
          Center(
            child: Container(
              width: 370,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color : Color(0xff2C4939),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Add to card', style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color :Colors.white,
                      fontSize: 16
                    ),
                  ),),
                  Gap(8),
                  Image.asset('assets/HomePage/Line 1.png' , height: 24,),
                  Gap(8),
                  Text('₹${totalPrice.toStringAsFixed(3)}', style: GoogleFonts.inter(
                    textStyle: TextStyle(
                        color :Colors.white,
                        fontSize: 16
                    ),
                  ),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
