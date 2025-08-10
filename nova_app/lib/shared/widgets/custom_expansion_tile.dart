import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nova_app/shared/network/style/app_colors.dart';

class CustomExpansionTile extends StatelessWidget {
  const CustomExpansionTile({
   required this.leading,
   required this.trailing,
  required  this.title,
   required this.subTitle,
   required this.content,
    this.onPress,

    super.key});
  final  IconData leading;
  final  IconData trailing;
  final  String title;
  final  Widget? subTitle;
  final  String content;
  final  void Function(bool)? onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsetsDirectional.only(bottom: 15,end: 15,start: 15,top: 5),
      child: ExpansionTile(
        // tilePadding: EdgeInsetsDirectional.zero,
        subtitle: subTitle,
        onExpansionChanged:onPress,
        trailing: Icon(trailing,size: 36,) ,
        leading:  Icon(leading),
        collapsedBackgroundColor: AppColors.primaryColor,
        collapsedIconColor: Colors.white,
        collapsedTextColor: Colors.white,
        collapsedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        childrenPadding:EdgeInsetsDirectional.only(start:16,end: 16,bottom: 10 ) ,
        iconColor: Colors.white,
        backgroundColor: AppColors.primaryColor,
        textColor: Colors.white,
        title: Text(
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          title,
          style: GoogleFonts.nunito(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        children:  [
          Text(
            textAlign: TextAlign.justify,

            content ,style: GoogleFonts.nunito(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),),
        ],
      ),
    );
  }
}
