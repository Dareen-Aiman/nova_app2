import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nova_app/shared/network/style/app_colors.dart';
import 'package:nova_app/shared/widgets/app_elevated_button.dart';
import 'package:nova_app/shared/widgets/app_text_field.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late TextEditingController _regionTextEditingController;

  @override
  void initState() {
    super.initState();
    _regionTextEditingController = TextEditingController();
  }

  void dispose() {
    _regionTextEditingController.dispose();
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
          'Profile',
          style: GoogleFonts.nunitoSans(
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
                'Setting Your Profile',
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
            Stack(
              children: [
                Image.asset(
                  'images/pinkRectangle.png',
                ),
                Positioned(
                  top: 50,
                  right: 50,
                  child: Image.asset('images/Camera.png'),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                text: 'Add Profile Picture',
                style: GoogleFonts.nunitoSans(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            AppTextField(
              hint: 'Choose Region',
              controller: _regionTextEditingController,
              suffix: Icons.arrow_forward_ios_outlined,
              maxLines: 1,
              minLines: 1,
              expands: false,
              constraints: 56,
            ),
            const SizedBox(
              height: 150,
            ),
            AppElevatedButton(
                onPress: () {
                  Navigator.pushNamed(context, '/main_profile_screen');
                },
                buttonName: 'Let’s Go')
          ],
        ),
      ),
    );
  }
}
