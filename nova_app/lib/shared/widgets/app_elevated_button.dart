import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    required this.onPress,
    required this.buttonName,
    super.key,
  });

  final void Function() onPress;
  final String buttonName;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            // blurRadius: 2,
            color: Colors.white,
            // offset: Offset(0, 2),
          ),
        ],

      ),
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFFF7750),
          minimumSize: const Size(double.infinity, 63.83),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          buttonName,
          style: GoogleFonts.nunitoSans(
            color: const Color(0xFFFFFFFF),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
