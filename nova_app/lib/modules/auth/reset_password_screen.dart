import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nova_app/shared/widgets/app_elevated_button.dart';
import 'package:nova_app/shared/widgets/app_text_field.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  late TextEditingController _passwordTextEditingController1;
  late TextEditingController _passwordTextEditingController2;

  bool _obscure =false;
  bool _obscureSecond = false;

  @override
  void initState() {
    super.initState();
    _passwordTextEditingController1 = TextEditingController();
    _passwordTextEditingController2 = TextEditingController();

  }

  @override
  void dispose() {
    _passwordTextEditingController1.dispose();
    _passwordTextEditingController2.dispose();
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
                'Reset Password',
                style: GoogleFonts.nunitoSans(
                  fontSize: 22,
                  color: const Color(0xFF3E3E3E),
                  // color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              alignment: AlignmentDirectional.center,
              margin: const EdgeInsetsDirectional.only(bottom: 30),
              // margin: const EdgeInsetsDirectional.only(start: 25),
              child: Text(
                'Set the new password for your account ane you can access all the features.',
                style: GoogleFonts.nunitoSans(
                  fontSize: 16,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),


            AppTextField(
              hint: 'Enter new password',
              obscure: _obscure,
              suffix: !_obscure ? Icons.visibility : Icons.visibility_off,
              controller: _passwordTextEditingController1,
              minLines: 1,
              maxLines: 1,
              expands: false,
              constraints: 56 ,
              onPress: () {
                setState(() {
                  _obscure = !_obscure;
                });
              },
            ),
            const SizedBox(height: 20),
            AppTextField(
              hint: 'Repeat password',
              obscure: _obscureSecond,
              suffix: !_obscureSecond ?   Icons.visibility :Icons.visibility_off,
              controller: _passwordTextEditingController2,
              maxLines: 1,
              minLines: 1,
              expands: false,

              constraints:  56,
              onPress: () {
                setState(() {
                  _obscureSecond = !_obscureSecond;
                });
              },
            ),
            SizedBox(height: 260,),
            AppElevatedButton(
                onPress: () {
                  Navigator.pushNamed(context, '/after_reset_password_screen');
                },
                buttonName: 'Confirm'),
          ],
        ),
      ),
    );
  }
}
