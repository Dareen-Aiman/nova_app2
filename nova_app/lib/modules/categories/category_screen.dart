import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nova_app/shared/widgets/category_item.dart';
import 'package:nova_app/shared/widgets/custom_app_bar.dart';
import 'package:nova_app/shared/widgets/home_section.dart';

class CategoryScreen extends StatelessWidget {
   static const List<Map<String,String>> data =[{
    // 'categoryName':'Furniture',
    'imageUrl' : 'images/firstCategoryPicture .png',
  },
    {
      // 'categoryName':'Fashion',
      'imageUrl' : 'images/secondCategoryPicture.png',
    },
     {
       // 'categoryName':'Electronic',
       'imageUrl' : 'images/thirdCategoryPicture.png',
     },{
       // 'categoryName':'Shoes',
       'imageUrl' : 'images/fourthCategoryPicture.png',
     },{
       // 'categoryName':'Healthy Food',
       'imageUrl' : 'images/fifthCategoryPicture.png',
     },{
       // 'categoryName':'Accessories',
       'imageUrl' : 'images/sixthCategoryPicture.png',
     },
  ];
   const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 50,),
             Row(
              children: [
                IconButton(onPressed: (){
                  Navigator.pushNamed(context, '/bottom_navigation_bar_screen');
                }, icon: Icon(Icons.arrow_back_outlined,color:Color(0xFF3E3E3E),size: 32, ),)
                // Icon(Icons.arrow_back_outlined,color: Color(0xFF3E3E3E),size: 35,)
              ],
            ),
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                   Padding(
                     padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 5),
                     child: Text(
                        'Category',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF3E3E3E),
                        ),
                      ),
                   ),

                ],
              ),

            Expanded(
                child: Stack(
                  children: [
                    GridView.builder(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 0,
                        ),
                        physics: const BouncingScrollPhysics(),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 3,
                          childAspectRatio: 170/100,
                        ),
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return CategoryItem(categoryName: data[index]['categoryName']??'', imageUrl: data[index]['imageUrl']??'');
                        },),
                  ],
                ),),

            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(padding: EdgeInsets.only(bottom: 240),
                  child: Text('Loading More ...',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 14,
                      color: const Color(0xFFCACACA),
                    ),),),




            ),
            //  Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 80),
            //   child: Column(
            //     children: [
            //       CategoryItem(categoryName: 'Furniture', imageUrl: 'images/firstImageForCategory.png',),
            //       SizedBox(height: 10,),
            //       CategoryItem(categoryName: 'Fashion', imageUrl: 'images/secondCategoryImage.jpeg',),
            //       SizedBox(height: 10,),
            //       CategoryItem(categoryName: 'Furniture', imageUrl: '',),
            //       SizedBox(height: 10),
            //       CategoryItem(categoryName: 'Furniture', imageUrl: '',),
            //       SizedBox(height: 10),
            //       CategoryItem(categoryName: 'Furniture', imageUrl: '',),
            //       SizedBox(height: 10),
            //       CategoryItem(categoryName: 'Furniture', imageUrl: '',),
            //     ],
            //   ),
            // ),

            // Expanded(
            //   child: GridView.builder(
            //     padding: const EdgeInsetsDirectional.symmetric(
            //         horizontal: 16, vertical: 0),
            //     physics: const BouncingScrollPhysics(),
            //     itemCount: 20,
            //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 2,
            //       mainAxisSpacing: 8,
            //       crossAxisSpacing: 8,
            //       childAspectRatio: 152 / 255,
            //     ),
            //     itemBuilder: (BuildContext context, int index) {
            //       return CategoryItem(categoryName: 'Furniture', imageUrl: 'images/firstImageForCategory.png');
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
    // appBar: const CustomAppBar(title: 'Nova',firstIcon: Icons.shopping_cart_outlined,),
    //   body: Padding(
    //     padding: const EdgeInsets.only(top: 80),
    //     child: ListView(
    //       scrollDirection: Axis.vertical,
    //       padding: const EdgeInsetsDirectional.only(start: 25, end: 25),
    //       children: [
    //
    //     HomeSection(title: 'Category', onPress: () {}),
    //     ConstrainedBox(
    //       constraints: const BoxConstraints(
    //         maxHeight: 500,
    //         maxWidth: 500,
    //       ),
    //       child: ListView(
    //         scrollDirection: Axis.vertical,
    //         children: const [
    //           CategoryItem(
    //               categoryName: 'Furniture',
    //               imageUrl: 'images/firstImageForCategory.png'),
    //           SizedBox(height: 5),
    //           CategoryItem(
    //               categoryName: 'Fashion',
    //               imageUrl: 'images/secondCategoryImage.jpeg'),
    //           SizedBox(height: 5),
    //           CategoryItem(categoryName: '', imageUrl: ''),
    //           SizedBox(height: 5),
    //           CategoryItem(categoryName: '', imageUrl: ''),
    //           SizedBox(height: 5),
    //           CategoryItem(categoryName: '', imageUrl: ''),
    //           SizedBox(height: 5),
    //           CategoryItem(categoryName: '', imageUrl: ''),
    //         ],
    //       ),
    //     ),
    //     ],
    // ),
    //   ),
  }
}
