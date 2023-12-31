import 'package:flutter/material.dart';
import 'package:nova_app/widgets/app_elevated_button.dart';

class AfterCreateAccount extends StatelessWidget {
  const AfterCreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/whiteBox.png',
            ),
            AppElevatedButton(onPress: (){
              Navigator.pushNamed(context, '/profile_screen');
            }, buttonName: 'Next')
          ],

        ),
      ),

    );
  }
}
