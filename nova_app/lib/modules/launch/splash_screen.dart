import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
   Future.delayed(const Duration(seconds: 3),(){
   Navigator.pushReplacementNamed(context, '/on_boarding_screen');
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: AlignmentDirectional.center,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                // color: Colors.white,
                borderRadius: BorderRadiusDirectional.circular(0),
              ),
              child: Image.asset('images/logo icon- 01.png',
                  alignment: Alignment.centerLeft),
            ),
            const SizedBox(width: 20),
            Text(
              'Nova',
              style: GoogleFonts.nunitoSans(
                color: const Color(0xFF3E3E3E),
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// decoration: BoxDecoration(
//   // gradient: LinearGradient(
//   //   colors: Color(0xFFE5E5E5),
//   )
