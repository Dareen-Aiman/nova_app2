import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({
   required this.title,
   required this.onPress,
    super.key,
  });
  final String title;
  final void Function() onPress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(vertical: 18),
      child: Row(
        children: [
          Text(
            title,
            style: GoogleFonts.nunitoSans(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF3E3E3E),
            ),
          ),
          const Spacer(),
          TextButton(
            onPressed: onPress,
            child: Text(
              'See More',
              style: GoogleFonts.nunitoSans(
                color: const Color(0xFF3E3E3E),
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),

            ),

          ),
        ],
      ),
    );
  }
}
