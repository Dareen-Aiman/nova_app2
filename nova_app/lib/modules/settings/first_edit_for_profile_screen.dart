import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nova_app/shared/widgets/custom_app_bar.dart';

class FirstEditForProfileScreen extends StatelessWidget {
  const FirstEditForProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25,top: 75),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_outlined,color: Color(0xFF3E3E3E),size: 35,)
                ],
              ),
            ),
            SizedBox(height: 30,),
           Container(
             padding: EdgeInsetsDirectional.only(start: 25),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text('Edit Profile',style: GoogleFonts.nunitoSans(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3E3E3E),

                      ),),
               ],
             ),
           ),

          ],
        ),
      );

  }
}
