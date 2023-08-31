import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nova_app/widgets/app_elevated_button.dart';
import 'package:nova_app/widgets/app_text_field.dart';

class VerificationForRegisterScreen extends StatefulWidget {
  const VerificationForRegisterScreen({
    super.key});
  @override
  State<VerificationForRegisterScreen> createState() =>
      _VerificationForRegisterScreenState();
}
class _VerificationForRegisterScreenState
    extends State<VerificationForRegisterScreen> {
  late TextEditingController _verificationCodeTextEditingController;
  @override
  void initState() {
    super.initState();
    _verificationCodeTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _verificationCodeTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),

      body: Padding(

        padding: const EdgeInsetsDirectional.symmetric(horizontal: 25),
        child: Column(
          children: [
            const SizedBox(height: 130),
            Container(
              alignment: AlignmentDirectional.topStart,
              // margin: const EdgeInsetsDirectional.only(start: 25),
              child: Text(
                'Hello There',
                style: GoogleFonts.nunitoSans(
                  fontSize: 16,
                  // color: Color(0xF3E3E3EF),
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              alignment: AlignmentDirectional.topStart,
              // margin: const EdgeInsetsDirectional.only(start: 25),
              child: Text(
                'Create Your Account',
                style: GoogleFonts.nunitoSans(
                  color: const Color(0xFF3E3E3E),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            AppTextField(
              hint: 'Verification Code',
              controller: _verificationCodeTextEditingController,
              suffix: Icons.numbers,
              minLines: 1,
              maxLines: 1,
              expands: false,
              constraints: 56,
            ),
            const SizedBox(height: 350,),
            AppElevatedButton(onPress: () {
              Future.delayed(const Duration(seconds: 1),(){
                Navigator.pushNamed(context, '/after_create_account');
              });
            }, buttonName: 'Confirm')

          ],
        ),
      ),
    );

  }
}
