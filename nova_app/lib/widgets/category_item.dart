import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    required this.categoryName,
    required this.imageUrl,
    super.key,
  });
   final String categoryName;
   final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              padding: const EdgeInsetsDirectional.all(5),
              height: 80,
              width: 235,
              decoration: BoxDecoration(
                image:  DecorationImage(
                  image: AssetImage(
                      imageUrl),
                fit: BoxFit.fitWidth,
                ),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.black26,
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              top: 29,
              left: 20,
              child: Text(
                categoryName,
                style: GoogleFonts.nunitoSans(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFFFFFFF),
                ),
              ),
            ),
          ],
        ),

      ],
    );

  }
}
