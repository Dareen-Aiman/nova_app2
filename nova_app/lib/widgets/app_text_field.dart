import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    required this.hint,
    required this.controller,
    required this.suffix,
    this.onPress,
    this.obscure = false,
    this.minLines =1,
    this.maxLines =1,
    this.expands = false,
    this.constraints =0,
    this.errorText,
    super.key,
  });

  final String hint;
  final IconData? suffix;
  final void Function()? onPress;
  final TextEditingController controller;
  final bool obscure;
   final int? minLines;
  final int? maxLines;
  final bool expands;
  final double constraints ;
  final String? errorText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: GoogleFonts.nunitoSans(
        color: const Color(0xFF3E3E3E),
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
       obscureText: obscure,
      keyboardType: TextInputType.emailAddress,
      minLines:minLines,
      maxLines: maxLines,
      expands: expands,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        constraints: BoxConstraints(maxHeight: constraints),
        suffixIcon: IconButton(color: Colors.black45,onPressed: onPress, icon: Icon(suffix)),
        filled: true,
        fillColor: Colors.white,
        hintText: hint,
        hintStyle: GoogleFonts.nunitoSans(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: const Color(0xFFCACACA),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            width: 1,
            color: Colors.black26,
            
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            width: 1,
            color: Colors.black,
          ),
        ),
        errorText: errorText,
        errorStyle: GoogleFonts.nunitoSans(
          fontSize: 14,
          color: const Color(0xFFFF4343),
        ),
        errorBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            width: 1,
            color: Color(0xFFFF4343),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            width: 1,
            color: Color(0xFFFF4343),
          ),
        ),
      ),
    );
  }
}
