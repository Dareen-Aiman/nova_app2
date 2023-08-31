import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nova_app/widgets/app_elevated_button.dart';

import '../../widgets/verification_text_field.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({
    super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAFAFA),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Verification',
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF3E3E3E),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 25),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 84),
            Container(
              alignment: AlignmentDirectional.topStart,
              // margin: const EdgeInsetsDirectional.only(start: 25),
              child: Text(
                'Enter Your Code',
                style: GoogleFonts.nunitoSans(
                  fontSize: 22,
                  color: const Color(0xFF3E3E3E),
                  // color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              alignment: AlignmentDirectional.center,
              margin: const EdgeInsetsDirectional.only(bottom: 20),
              // margin: const EdgeInsetsDirectional.only(start: 25),
              child: Text(
                'Enter the 4 digits code that you recived on your email',
                style: GoogleFonts.nunitoSans(
                  fontSize: 16,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 68,
                  width: 64,
                  child: VerificationTextField(),
                  //
                ),
                SizedBox(
                  height: 68,
                  width: 64,
                  child: VerificationTextField(),
                ),
                SizedBox(
                  height: 68,
                  width: 64,
                  child: VerificationTextField(),
                ),
                SizedBox(
                  height: 68,
                  width: 64,
                  child: VerificationTextField(),
                ),
              ],
            ),
            const SizedBox(height: 300),

            AppElevatedButton(onPress: () {
                Navigator.pushNamed(context, '/home_screen');
            }, buttonName: 'Verify Now')
          ],
        ),
      ),
    );
  }
}
