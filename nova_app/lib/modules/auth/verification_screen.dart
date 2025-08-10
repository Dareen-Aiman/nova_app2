import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nova_app/shared/network/style/app_colors.dart';
import 'package:nova_app/shared/widgets/app_elevated_button.dart';
import 'package:nova_app/shared/widgets/verification_text_field.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({
    super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  late TapGestureRecognizer _resetPasswordTapGestureRecognizerForgot;


  @override
  void initState() {
    super.initState();
    _resetPasswordTapGestureRecognizerForgot = TapGestureRecognizer()..onTap =resetPasswordAction;

  }

  @override
  void dispose() {
    _resetPasswordTapGestureRecognizerForgot.dispose();
    super.dispose();
  }
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
                Navigator.pushNamed(context, '/bottom_navigation_bar_screen');
            }, buttonName: 'Verify Now'),

            const SizedBox(height: 15),

            RichText(
              text: TextSpan(
                  text: 'You forgot your password? Please ',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF3E3E3E),
                  ),
                  children: [
                    TextSpan(
                      text: 'Reset Password',
                      recognizer: _resetPasswordTapGestureRecognizerForgot,
                      style: GoogleFonts.nunitoSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
  void resetPasswordAction() {
    Navigator.pushNamed(context, '/reset_password_screen');
  }
}
