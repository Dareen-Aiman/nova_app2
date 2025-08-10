import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomProfileListTile extends StatelessWidget {
  const CustomProfileListTile({
    required this.title,
    required this.leadingIcon,
    this.trailingIcon,
    this.onPress,
    this.marginBottom=0,
    super.key,
  });
    final String title;
    final IconData leadingIcon;
    final IconData? trailingIcon;
    final void Function()? onPress;
    final double marginBottom;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(8),
      ),
      margin: EdgeInsetsDirectional.only(bottom: marginBottom),
      child: ListTile(
        leading: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            // color: Colors.orange.shade500,
            // color: Colors.deepOrangeAccent,
            color: const Color(0xFFFF7750),
            borderRadius: BorderRadius.circular(8),
          ),
          child:
           Icon(
            leadingIcon,
            color: Colors.white,
            // color: Color(0xFFFFC9C7),

          ),
        ),
        title: Text(
          title,
          style: GoogleFonts.nunito(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF3E3E3E),
          ),
        ),
        trailing: IconButton(
            onPressed: onPress,
            icon:  Icon(
              trailingIcon,
              color: const Color(0xFFFF7750),
            )),
      ),
    );
  }
}
