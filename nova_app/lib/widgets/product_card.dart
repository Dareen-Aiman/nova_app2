import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    required this.productName,
    required this.price,
    required this.onPress,
    super.key,
  });


   final String productName;
   final String price;
   final void Function() onPress;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: const Color(0xFF22292E).withOpacity(0.2),
              offset: const Offset(24, 40),
              blurRadius: 80),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsetsDirectional.only(bottom: 8),
            height: 180,
            decoration: BoxDecoration(
              color: const Color(0xFFDEDEE0),
              borderRadius: BorderRadiusDirectional.circular(15),
              // image: DecorationImage(
              //   image: ,
              // ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            productName,
            style: GoogleFonts.nunitoSans(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF3E3E3E)),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                price,
                style: GoogleFonts.nunitoSans(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFFF7750),
                ),
              ),
              const Spacer(),
              IconButton(
                padding: EdgeInsetsDirectional.zero,
                constraints: const BoxConstraints(),
                onPressed: onPress,
                icon: const Icon(
                  Icons.favorite_outline,
                  color: Color(0xFFFF7750),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
