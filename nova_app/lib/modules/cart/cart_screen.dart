import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardScreen extends StatelessWidget {
  CardScreen({super.key});

  List imagesList = [
    'images/firstProduct.png',
    'images/secondProduct.png',
    'images/thirdProduct.png',
    'images/fourthProduct.png',
  ];
  List productTitles = [
    'Hooded',
    'Hooded',
    'Chair',
    'Chair',
  ];
  List prices = [
    '\$50',
    '\$55',
    '\$100',
    '\$120',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CustomAppBar(title: 'My Bag',firstIcon: Icons.shopping_cart_outlined,),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Container(
                  child: ListView.builder(
                    itemCount: imagesList.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Checkbox(
                              splashRadius: 20,
                              activeColor: Colors.red,
                              value: true,
                              onChanged: (vol) {},
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(imagesList[index],
                                  height: 80, width: 80, fit: BoxFit.cover),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  productTitles[index],
                                  style: GoogleFonts.nunitoSans(
                                    color: Colors.black87,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'hooded Jacket',
                                  style: GoogleFonts.nunitoSans(
                                    color: Colors.black26,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  prices[index],
                                  style: GoogleFonts.nunitoSans(
                                    color: Colors.red,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(CupertinoIcons.minus),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  '1',
                                  style: GoogleFonts.nunitoSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(CupertinoIcons.plus),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Select All', style: GoogleFonts.nunitoSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),),
                    Checkbox(
                        splashRadius: 20,
                        activeColor: Colors.red,
                        value: false,
                        onChanged: (vol) {}),
                  ],
                ),
                // Divider(height: 20,thickness: 1,color: Colors.black),
              //   Row(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: [
              //       Text('Total Payment', style: GoogleFonts.nunitoSans(
              //         fontSize: 18,
              //         fontWeight: FontWeight.w500,
              //       ),),
              //       Text('\$300.50', style: GoogleFonts.nunitoSans(
              //         fontSize: 18,
              //         fontWeight: FontWeight.w900,
              //         color: Colors.red,
              //       ),),
              //     ],
              //   ),
              //   SizedBox(height: 20,),
              //   InkWell(
              //     onTap: (){},
              //
              //   )
              // ],
            ],),),
      ),
    );
  }
}
