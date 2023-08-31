import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nova_app/widgets/app_text_field.dart';
import 'package:nova_app/widgets/product_card.dart';
// import 'package:nova_app/widgets/product_card.dart';

import '../../widgets/category_item.dart';
import '../../widgets/home_section.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Nova',
          style: GoogleFonts.nunitoSans(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: const Color(0xFFFF7750),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
            color: const Color(0xFF3E3E3E),
          )
        ],
      ),
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
          ProductCard(
              productName: 'Nike Jordan 1 Retro Yellow',
              price: '\$608',
              onPress: () {}),
          const SizedBox(
            height: 10,
          ),
          ProductCard(
              productName: 'Jacket Pullover Sweat Hoodie',
              price: '\$28',
              onPress: () {}),
          const SizedBox(
            height: 10,
          ),
          ProductCard(
              productName: 'Jacket Pullover Sweat Hoodie',
              price: '\$28',
              onPress: () {}),
          const SizedBox(
            height: 10,
          ),
          ProductCard(
              productName: 'Jacket Pullover Sweat Hoodie',
              price: '\$28',
              onPress: () {}),
          const SizedBox(
            height: 10,
          ),
          ProductCard(
              productName: 'Jacket Pullover Sweat Hoodie',
              price: '\$28',
              onPress: () {}),

          // GridView.builder(
          //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 2,
          //       crossAxisSpacing: 8,
          //       mainAxisSpacing: 8,
          //     childAspectRatio: 168 / 245,
          //   ),
          //   itemBuilder: (context, index) {
          //   return const ProductCard(productName: 'Nike Jordan 1 Retro Yellow', price: '608');
          //   }
          // ),
        ],
      ),
    );
  }
}
