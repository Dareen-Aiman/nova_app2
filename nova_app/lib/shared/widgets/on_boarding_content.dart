import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    required this.imageUrl,
    required this.firstSmallPicture,
    required this.secondSmallPicture,
    required this.thirdSmallPicture,
    required this.topPosition,
    required this.leftPosition,
    required this.topPosition1,
    required this.leftPosition1,
    required this.topPosition2,
    required this.leftPosition2,


    // required this.secondSmallPicture,
    // required this.thirdSmallPicture,

    required this.title,
    required this.subTitle,

    // required this.textButton,
    super.key,
  });

  final String imageUrl;
  final String firstSmallPicture;
  final String secondSmallPicture;
  final String thirdSmallPicture;
  final double topPosition;
  final double leftPosition;
  final double topPosition1;
  final double leftPosition1;
  final double topPosition2;
  final double leftPosition2;
  // final String secondSmallPicture;
  // final String thirdSmallPicture;
  final String title;
  final String subTitle;

  // final String textButton;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Positioned(

            child: Image.asset('images/circle Ellipse .png',

            ),),

            Positioned(
              // bottom: 10,
                child: Image.asset('images/circle.png',

            )


            ),
            Positioned(
              top: -75,
              left: 5,
              child: Image.asset(
                'images/$imageUrl.png',
              ),
            ),
            Positioned(
              left: leftPosition,
               top: topPosition,
              child: Image.asset(

                'images/$firstSmallPicture.png',


              ),

            ),
            Positioned(
              left: leftPosition1,
              top: topPosition1,
              child: Image.asset(

                'images/$secondSmallPicture.png',


              ),
            ),
            Positioned(
              left: leftPosition2,
              top: topPosition2,
              child: Image.asset(

                'images/$thirdSmallPicture.png',


              ),
            ),
          ],
        ),
        // Container(

        //   width: 293,
        //   height: 388,
        //   decoration: const BoxDecoration(
        //     image: DecorationImage(
        //       image: AssetImage(
        //         'images/circle.png',
        //       ),
        //       // image: AssetImage('images/circle Ellipse .png'),
        //       // image: AssetImage('images/onboarding1.png' )
        //     ),
        //     // shape: BoxShape.circle,
        //   ),
        // // ),
        const SizedBox(
          height: 80,
        ),
        Text(
          title,
          style: GoogleFonts.nunitoSans(
            color: const Color(0xFF3E3E3E),
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 24.85,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 61),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: GoogleFonts.nunitoSans(
              color: const Color(0xFF3E3E3E),
              fontSize: 16,
            ),
            // fontSize: 16),
          ),
        ),
        // Padding(
        // padding:const EdgeInsetsDirectional.symmetric(horizontal: 25),
        // child: DecoratedBox(
        // decoration: const BoxDecoration(
        // boxShadow: [
        // BoxShadow(
        // blurRadius: 2,
        // color: Colors.black45,
        // offset: Offset(0, 2),
        // ),
        // ],
        // ),
        // ElevatedButton(
        //  onPressed: () {
        //  Navigator.pushReplacementNamed(context, '/login_screen');
        //  },
        //  style: ElevatedButton.styleFrom(
        //  backgroundColor: const Color(0xFFFF7750),
        //  minimumSize: const Size(double.infinity, 63.83),
        //  shape: RoundedRectangleBorder(
        //  borderRadius: BorderRadius.circular(15),
        //  ),
        //  ),
        //  child: Text(
        //  textButton,
        //  style: GoogleFonts.nunitoSans(
        //  color: const Color(0xFFFFFFFF),
        //  fontSize: 16,
        //  fontWeight: FontWeight.bold,
        //  ),
        //  ),
        //  ),
        // ),
        // ),
      ],
    );
  }
}
