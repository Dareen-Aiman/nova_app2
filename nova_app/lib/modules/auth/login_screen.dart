import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nova_app/shared/network/style/app_colors.dart';
import 'package:nova_app/shared/widgets/app_elevated_button.dart';
import 'package:nova_app/shared/widgets/app_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;
  late TapGestureRecognizer _tapGestureRecognizer;
  late TapGestureRecognizer _tapGestureRecognizerForgot;
  bool _obscure = true;
  String? _emailErrorValue;
  String? _passwordErrorValue;

  @override
  void initState() {
    super.initState();
    _emailTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
    _tapGestureRecognizer = TapGestureRecognizer()..onTap = signUpAction;
    _tapGestureRecognizerForgot =TapGestureRecognizer()..onTap=forgotPasswordAction;
    // _tapGestureRecognizer.onTap =signUpAction;
  }

  @override
  void dispose() {
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    _tapGestureRecognizer.dispose();
    _tapGestureRecognizerForgot.dispose();
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
          'Login',
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
                'Welcome Back',
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
              hint: 'Email Address',
              suffix: Icons.email_sharp,
              controller: _emailTextEditingController,
              minLines: 1,
              maxLines: 1,
              expands: false,
              constraints: _emailErrorValue == null ? 56 : 76,
              errorText: _emailErrorValue,
            ),
            const SizedBox(height: 20),
            AppTextField(
              hint: 'Password',
              suffix: _obscure ? Icons.visibility : Icons.visibility_off,
              controller: _passwordTextEditingController,
              obscure: _obscure,
              maxLines: 1,
              minLines: 1,
              expands: false,
              constraints: _passwordErrorValue == null ? 56 : 76,
              errorText: _passwordErrorValue,
              onPress: () {
                setState(() {
                  _obscure = !_obscure;
                });
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: RichText(
                text: TextSpan(
                  recognizer: _tapGestureRecognizerForgot,
                  text: 'Forgot Password?',
                    style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: AppColors.primaryColor,
                    ),
                ),
              ),
              // child: Text(
              //   'Forgot Password?',
              //   style: GoogleFonts.nunitoSans(
              //     fontWeight: FontWeight.w600,
              //     fontSize: 14,
              //     color: AppColors.primaryColor,
              //   ),
              // ),
            ),
            const SizedBox(
              height: 215,
            ),
            AppElevatedButton(
                onPress: () {
                  performLogin();
                },
                buttonName: 'Login'),
            const SizedBox(height: 15),

            RichText(
              text: TextSpan(
                  text: 'Don’t have an account? Please ',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF3E3E3E),
                  ),
                  children: [
                    TextSpan(
                      text: 'Sign Up',
                      recognizer: _tapGestureRecognizer,
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

  void signUpAction() {
    Navigator.pushNamed(context, '/sign_up_screen');
  }
  void forgotPasswordAction() {
    Navigator.pushNamed(context, '/forgot_password_screen');
  }

  void performLogin() {
    if (checkData()) {
      login();
    }
  }

  bool checkData() {
    if (_emailTextEditingController.text.isNotEmpty &&
        _passwordTextEditingController.text.isNotEmpty) {
      changeErrorValue();
      return true;
    }

    changeErrorValue();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Enter Required Data',
          style: GoogleFonts.nunitoSans(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFFFF4343),
        dismissDirection: DismissDirection.horizontal,
        duration: const Duration(seconds: 3),
        margin:
            const EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 20),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
    return false;
  }

  void login() {
    Navigator.pushNamed(context, '/verification_screen');
  }

  void changeErrorValue() {
    setState(() {
      _emailErrorValue =
          _emailTextEditingController.text.isEmpty ? 'Enter Email' : null;
      _passwordErrorValue =
          _passwordTextEditingController.text.isEmpty ? 'Enter password' : null;
    });
  }
}
