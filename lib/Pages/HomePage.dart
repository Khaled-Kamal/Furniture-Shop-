import 'package:flutter/material.dart';
import 'package:furnitue_shop/Model/ChairsModel.dart';
import 'package:furnitue_shop/Model/SellerModel.dart';
import 'package:furnitue_shop/Pages/ProductDetails.dart';
import 'package:furnitue_shop/Widgets/CustomCard.dart';
import 'package:furnitue_shop/Widgets/CustomSeller.dart';
import 'package:furnitue_shop/Widgets/CustomText.dart';
import 'package:furnitue_shop/Widgets/search.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int selectContainer = -1;

List<String> categories = ['Chairs', 'Cupboard', 'Tables', 'Lamps'];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,

        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: 'Discover The Best\nFurniture.',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),

              Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Image.asset('assets/HomePage/profile.png'),
              ),
            ],
          ),
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(30),
          Search(),
          Gap(20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: CustomText(
              text: 'Categories',
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),

          Gap(20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: SizedBox(
              height: 50,

              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                separatorBuilder: (context, index) => Gap(12),
                itemBuilder: (context, index) {
                  bool isSelect = index == selectContainer;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectContainer = index;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 400),
                      width: 105,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: isSelect ? Color(0xff416954) : Color(0xffF2F2F2),
                      ),
                      child: Center(
                        child: Text(
                          categories[index],
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: isSelect
                                  ? Colors.white
                                  : Color(0xff416954),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          Gap(20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: SizedBox(
              height: 330,

              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: chairs.length,
                separatorBuilder: (context, index) => Gap(17),

                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (c) => ProductDetails(
                          image: chairs[index].image,
                          rate: chairs[index].rate,
                          title: chairs[index].title,
                         subtitle:chairs[index].subtitle,
                          price: chairs[index].price,
                        ),
                        ),
                      );
                    },
                    child: CustomCard(
                      image: chairs[index].image,
                      rate: chairs[index].rate,
                      title: chairs[index].title,
                      subtitle: chairs[index].subtitle,
                      price: chairs[index].price,
                    ),
                  );
                },
              ),
            ),
          ),

          Gap(20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: CustomText(
              text: 'Best Seller',
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),

          Gap(20),

          SizedBox(
            height: 140,

            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: seller.length,
              separatorBuilder: (context, index) => Gap(17),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (c)=> ProductDetails(
                        image: seller[index].image,
                        rate: seller[index].rate,
                        title: seller[index].title,
                        subtitle: seller[index].subtitle,
                        price: seller[index].price,
                    ),),);
                  },
                  child: CustomSeller(
                    rate: seller[index].rate,
                    title: seller[index].title,
                    subtitle: seller[index].subtitle,
                    price: seller[index].price,
                    image: seller[index].image,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
