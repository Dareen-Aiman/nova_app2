import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nova_app/modules/home/bottom_navigation_bar_screen.dart';
import 'package:nova_app/shared/widgets/app_text_field.dart';
import 'package:nova_app/shared/widgets/category_item.dart';
import 'package:nova_app/shared/widgets/home_section.dart';
import 'package:nova_app/shared/widgets/product_card.dart';
// import 'package:nova_app/widgets/product_card.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController _searchTextEditingController;

  @override
  void initState() {
    super.initState();
    _searchTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _searchTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const CustomAppBar(title: 'Nova',firstIcon: Icons.shopping_cart_outlined,),
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsetsDirectional.only(start: 25, end: 25),
        children: [
          AppTextField(
            hint: 'Search',
            controller: _searchTextEditingController,
            suffix: Icons.search_outlined,
            minLines: 1,
            maxLines: 1,
            constraints: 56,
            expands: false,
          ),
          HomeSection(title: 'Category', onPress: () {}),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 80,
              maxWidth: 235,
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                CategoryItem(
                    categoryName: 'Furniture',
                    imageUrl: 'images/firstImageForCategory.png'),
                SizedBox(width: 5),
                CategoryItem(
                    categoryName: 'Fashion',
                    imageUrl: 'images/secondCategoryImage.jpeg'),
                SizedBox(width: 5),
                CategoryItem(categoryName: '', imageUrl: ''),
                SizedBox(width: 5),
                CategoryItem(categoryName: '', imageUrl: ''),
                SizedBox(width: 5),
                CategoryItem(categoryName: '', imageUrl: ''),
                SizedBox(width: 5),
                CategoryItem(categoryName: '', imageUrl: ''),
              ],
            ),
          ),
          HomeSection(title: 'Recommended For You', onPress: () {}),
          const SizedBox(
            height: 0,
          ),
          GridView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 10,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 152 / 260,
            ),
            itemBuilder: (context, index) {
              return ProductCard(
                  productName: 'Nike Jordan 1 Retro Yellow',
                  price: '\$608',
                  onPress: () {});
            },
          ),
          HomeSection(title: 'Offers', onPress: () {}),
          ListView.builder(
            physics:  const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                height: 100,
                margin: const EdgeInsetsDirectional.only(bottom: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow:  const [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 5,
                        offset: Offset(0, 4),
                      ),
                    ],),
              );
            },
          ),
          // const SizedBox(
          //   height: 20,
          // ),
          // GridView.builder(
          //   physics: const BouncingScrollPhysics(),
          //   itemCount: 10,
          //   scrollDirection: Axis.vertical,
          //   shrinkWrap: true,
          //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 2,
          //     crossAxisSpacing: 8,
          //     mainAxisSpacing: 8,
          //     childAspectRatio: 152 / 260,
          //   ),
          //   itemBuilder: (context, index) {
          //     return ProductCard(
          //         productName: 'Nike Jordan 1 Retro Yellow',
          //         price: '\$608',
          //         onPress: () {});
          //   },
          // ),
          const BottomNavigationBarScreen(),
        ],

      ),
    );
  }
}

