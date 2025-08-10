
import 'package:flutter/material.dart';
import 'package:nova_app/modules/auth/after_reset_password.dart';
import 'package:nova_app/modules/auth/forgot_password_screen.dart';
import 'package:nova_app/modules/auth/last_register_screen.dart';
import 'package:nova_app/modules/auth/login_screen.dart';
import 'package:nova_app/modules/auth/reset_password_screen.dart';
import 'package:nova_app/modules/auth/sign_up_screen.dart';
import 'package:nova_app/modules/auth/verify_forgot_password_screen.dart';
import 'package:nova_app/modules/cart/cart_screen.dart';
import 'package:nova_app/modules/categories/category_screen.dart';
import 'package:nova_app/modules/favorite/favorite_screen.dart';
import 'package:nova_app/modules/home/bottom_navigation_bar_screen.dart';
import 'package:nova_app/modules/launch/on_boarding_screen.dart';
import 'package:nova_app/modules/launch/splash_screen.dart';
import 'package:nova_app/modules/settings/first_edit_for_profile_screen.dart';
import 'package:nova_app/modules/settings/help_center_screen.dart';
import 'package:nova_app/modules/settings/settings_screen.dart';

import 'modules/auth/after_create_account.dart';
import 'modules/auth/verification_for_register.dart';
import 'modules/auth/verification_screen.dart';
import 'modules/categories/search_screen.dart';
import 'modules/home/home_screen.dart';
import 'modules/settings/main_profile_screen.dart';
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
        '/main_profile_screen':(context) => const MainProfileScreen(),
        '/search_screen':(context) => const SearchScreen(),
        '/last_register_screen':(context) => const LastRegisterScreen(),
        '/forgot_password_screen':(context) => const ForgotPasswordScreen(),
        '/verify_forgot_password_screen':(context) => const VerifyForgotPasswordScreen(),
        '/after_reset_password_screen':(context) => const AfterResetPassword(),
        '/reset_password_screen':(context) => const ResetPasswordScreen(),
        '/category_screen':(context) => const CategoryScreen(),
        '/bottom_navigation_bar_screen':(context) => const BottomNavigationBarScreen(),
        '/favorite_screen':(context) =>  FavoriteScreen(),
        '/help_center_screen':(context) =>  HelpCenterScreen(),
        '/card_screen':(context) =>  CardScreen(),
        '/first_edit_for_profile_screen':(context) => const FirstEditForProfileScreen(),
        '/settings_screen':(context) => const SettingsScreen(),











      },
    );
  }
}