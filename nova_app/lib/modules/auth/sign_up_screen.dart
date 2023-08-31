import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nova_app/widgets/app_text_field.dart';
import '../../widgets/app_elevated_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late TextEditingController _fullNameTextEditingController;
  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;
  late TapGestureRecognizer _tapGestureRecognizer;

  // bool _obscure = true;

  @override
  void initState() {
    super.initState();
    _fullNameTextEditingController = TextEditingController();
    _emailTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
    _tapGestureRecognizer = TapGestureRecognizer()..onTap = LoginAction;
  }

  void dispose() {
    _fullNameTextEditingController.dispose();
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    _tapGestureRecognizer.dispose();
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
          'Sign Up',
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
          children: [
            const SizedBox(height: 84),
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
              height: 30,
            ),
            AppTextField(
              hint: 'Full Name',
              controller: _fullNameTextEditingController,
              suffix: Icons.person,
              minLines: 1,
              maxLines: 1,
              expands: false,
              constraints: 56,
            ),
            const SizedBox(
              height: 20,
            ),
            AppTextField(
              hint: 'Email address',
              controller: _emailTextEditingController,
              suffix: Icons.email_sharp,
              minLines: 1,
              maxLines: 1,
              expands: false,
              constraints: 56,
            ),
            const SizedBox(
              height: 20,
            ),
            AppTextField(
              hint: 'Password',
              controller: _passwordTextEditingController,
              suffix: Icons.visibility,
              maxLines: 1,
              minLines: 1,
              expands: false,
              constraints: 56,
            ),
            const SizedBox(
              height: 185,
            ),
            AppElevatedButton(
                onPress: () {
                  Navigator.pushNamed(context, '/verification_for_register');
                },
                buttonName: 'Continue'),
            const SizedBox(height: 15),
            RichText(
              text: TextSpan(
                text: 'You already have an account? Please ',
                style: GoogleFonts.nunitoSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF3E3E3E),
                ),
                children: [
                  TextSpan(
                    text: 'Login',
                    recognizer: _tapGestureRecognizer,
                    style: GoogleFonts.nunitoSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFFFF7750),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  void LoginAction() {
    Navigator.pushNamed(context, '/login_screen');
  }
}
