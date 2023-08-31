import 'package:flutter/material.dart';
import 'package:nova_app/modules/auth/login_screen.dart';
import 'package:nova_app/modules/auth/sign_up_screen.dart';
import 'package:nova_app/modules/launch/on_boarding_screen.dart';
import 'package:nova_app/modules/launch/splash_screen.dart';

import 'modules/auth/after_create_account.dart';
import 'modules/auth/verification_for_register.dart';
import 'modules/auth/verification_screen.dart';
import 'modules/categories/search_screen.dart';
import 'modules/home/home_screen.dart';
import 'modules/settings/main_profile_screen.dart';
import 'modules/settings/profile_screen.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash_screen',
      routes: {
        '/splash_screen':(context) => const SplashScreen(),
        '/on_boarding_screen':(context) => const OnBoardingScreen(),
        '/login_screen':(context) => const LoginScreen(),
        '/verification_screen':(context) =>  const VerificationScreen(),
        '/home_screen':(context) => const HomeScreen(),
        '/sign_up_screen':(context) => const SignUpScreen(),
        '/verification_for_register':(context) => const VerificationForRegisterScreen(),
        '/after_create_account':(context) => const AfterCreateAccount(),
        '/profile_screen':(context) => const ProfileScreen(),
        '/main_profile_screen':(context) => const MainProfileScreen(),
        '/search_screen':(context) => const SearchScreen(),

      },
    );
  }
}
