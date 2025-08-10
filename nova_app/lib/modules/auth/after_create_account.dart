import 'package:flutter/material.dart';
import 'package:nova_app/shared/widgets/app_elevated_button.dart';

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
              height: 500,
              width:350,
            ),
            AppElevatedButton(onPress: (){
              Navigator.pushNamed(context, '/last_register_screen');
            }, buttonName: 'Next')
          ],

        ),
      ),

    );
  }
}
