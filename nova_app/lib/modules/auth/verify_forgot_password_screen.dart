import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nova_app/shared/widgets/app_elevated_button.dart';

class VerifyForgotPasswordScreen extends StatelessWidget {
  const VerifyForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            const Image(image: AssetImage('images/base.png'),),
            Padding(
              padding: const EdgeInsets.only(right: 38,left: 38),
              child: Column(
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: Text('Thank You!', style: GoogleFonts.nunitoSans(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF3E3E3E),
                    ),),
                  ),
                  const SizedBox(height: 30,),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 38,right: 38),
                    Text(textAlign: TextAlign.center,'We will sent 4 digits verification code to rizalegreyrat34@gmail.com please take a look and verify it',
                    style: GoogleFonts.nunitoSans(
                      fontSize:16,
                    ),
                    ),
                  const SizedBox(height: 40,),
                  AppElevatedButton(onPress: (){
                    Navigator.pushNamed(context, '/verification_screen');
                  }, buttonName: 'Verify Now'),
                ],
              ),
            ),

          ],
        ),
      ],
    ),
    );
  }
}
