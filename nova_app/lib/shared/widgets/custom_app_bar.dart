import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({
    required this.title,
    this.firstIcon,
    this.secondIcon,
    this.firstIconOnPress,
    this.secondIconOnPress,
    super.key,
  });

  final String title;
  final IconData? firstIcon;
  final IconData? secondIcon;
  final void Function()? firstIconOnPress;
  final void Function()? secondIconOnPress;
  @override
  Size get preferredSize =>const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        title,
        style: GoogleFonts.nunitoSans(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: const Color(0xFFFF7750),
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: firstIconOnPress,
          icon:  Icon(firstIcon),
          color: const Color(0xFF3E3E3E),
        ),
        IconButton(
          onPressed: secondIconOnPress,
          icon:  Icon(secondIcon),
          color: const Color(0xFF3E3E3E),
        ),
      ],
    );
  }


}
