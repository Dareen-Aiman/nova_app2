import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nova_app/shared/widgets/app_elevated_button.dart';
import 'package:nova_app/shared/widgets/app_text_field.dart';
import 'package:nova_app/shared/widgets/verification_text_field.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  late TextEditingController _forgotPasswordTextEditingController;

  void initState() {
    super.initState();
    _forgotPasswordTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _forgotPasswordTextEditingController.dispose();
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
                'Forgot Password',
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
              margin: const EdgeInsetsDirectional.only(bottom: 30),
              // margin: const EdgeInsetsDirectional.only(start: 25),
              child: Text(
                'Don’t worry, Nova have simple step to create your new password',
                style: GoogleFonts.nunitoSans(
                  fontSize: 16,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            AppTextField(
                hint: 'rizalegreyrat34@gmail.com',
                controller: _forgotPasswordTextEditingController,
                suffix: Icons.email_outlined,
            maxLines: 1,
              minLines: 1,
              expands: false,
              constraints: 56,

            ),
            const SizedBox(height: 300),
            AppElevatedButton(
                onPress: () {
                  Navigator.pushNamed(context, '/verify_forgot_password_screen');
                },
                buttonName: 'Confirm')
          ],
        ),
      ),
    );
  }
}
