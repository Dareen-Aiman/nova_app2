import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/app_elevated_button.dart';
import '../../widgets/on_boarding_content.dart';
import '../../widgets/page_view_custom_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final String textButton = '';

  late PageController _pageController;

  int _currentPage = 0;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              physics: const BouncingScrollPhysics(),
              controller: _pageController,
              // scrollDirection: Axis.horizontal,
              onPageChanged: (int currentPage) {
                setState(() {
                  _currentPage = currentPage;
                });
              },
              children: const [

                OnBoardingContent(

                    imageUrl: 'onboarding1',
                    firstSmallPicture: 'firstSmallPicture1',
                     topPosition: 140,
                    leftPosition: -26,
                    secondSmallPicture: 'secondPicture1',
                    topPosition1: -50,
                    leftPosition1: 160,
                    thirdSmallPicture: 'thirdSmallPicture1',
                    topPosition2: -50,
                    leftPosition2: -45,
                    title: 'Discover a New For You',
                    subTitle:
                        'Lots of new products here and decide which product is best for you'),

                OnBoardingContent(
                    imageUrl: 'onboarding2',
                    firstSmallPicture: 'firstSmallPicture2',
                    topPosition: 175,
                    leftPosition: -30,
                    secondSmallPicture: 'secondPicture2',
                    topPosition1: -60,
                    leftPosition1: -26,
                    thirdSmallPicture: 'thirdSmallPicture2',
                    topPosition2: 155,
                    leftPosition2: 130,
                    title: 'Find Your Best Product',
                    subTitle:
                        'Famous and quality product at affordable prices'),
                OnBoardingContent(
                    imageUrl: 'onboarding3',
                     firstSmallPicture: 'firstSmallPicture3',
                    topPosition: 150,
                    leftPosition: -26,
                    secondSmallPicture: 'secondPicture3',
                    topPosition1: -50,
                    leftPosition1: 160,
                    thirdSmallPicture: 'thirdSmallPicture3',
                    topPosition2:  160,
                    leftPosition2: 150,
                    title: 'Express Product Delivery',
                    subTitle:
                        'Your product will be delivered to your home safetly and securely'),

              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PageViewIndicator(
                isCurrentPage: _currentPage == 0,
                marginEnd: 15,
              ),
              PageViewIndicator(
                isCurrentPage: _currentPage == 1,
                marginEnd: 15,
              ),
              PageViewIndicator(
                isCurrentPage: _currentPage == 2,
              ),
            ],
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     TabPageSelectorIndicator(
          //         backgroundColor:
          //             _currentPage == 0 ? Color(0xFFFF7750) : Color(0xFFCACACA),
          //         borderColor: Colors.transparent,
          //         size: 10),
          //     TabPageSelectorIndicator(
          //         backgroundColor:
          //             _currentPage == 1 ? Color(0xFFFF7750) : Color(0xFFCACACA),
          //         borderColor: Colors.transparent,
          //         size: 10),
          //     TabPageSelectorIndicator(
          //         backgroundColor:
          //             _currentPage == 2 ? Color(0xFFFF7750) : Color(0xFFCACACA),
          //         borderColor: Colors.transparent,
          //         size: 10),
          //   ],
          // ),
          // const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  if (_currentPage > 0) {
                    _pageController.previousPage(
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOutBack);
                  }
                },
                icon: const Icon(
                  Icons.arrow_circle_left_rounded,
                  size: 36,
                  color: Color(0xFFFF7750),
                ),
              ),
              IconButton(
                onPressed: () {
                  if (_currentPage < 2) {
                    _pageController.nextPage(
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOutBack);
                  }
                },
                icon: const Icon(
                  Icons.arrow_circle_right_rounded,
                  size: 36,
                  color: Color(0xFFFF7750),
                ),
              ),
            ],
          ),

          const SizedBox(height: 25),
         if (_currentPage==0)
          Padding(
            padding:const EdgeInsetsDirectional.symmetric(horizontal: 25),
            child: DecoratedBox(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2,
                    color: Colors.black45,
                    offset: Offset(0, 2),
                  ),
                ],

              ),

              child: AppElevatedButton(
                onPress: () {
                  _pageController.nextPage(duration: const Duration(seconds: 1),
                      curve: Curves.easeInOutBack);
                },
                buttonName:'Next',
                // style: ElevatedButton.styleFrom(
                //   backgroundColor: const Color(0xFFFF7750),
                //   minimumSize: const Size(double.infinity, 63.83),
                //   shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(15),
                //   ),
                // ),
                // child: Text(
                //   'Next',
                //   style: GoogleFonts.nunitoSans(
                //     color: const Color(0xFFFFFFFF),
                //     fontSize: 16,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
              ),
            ),
          ),
          if(_currentPage==1)
            Padding(
              padding:const EdgeInsetsDirectional.symmetric(horizontal: 25),
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      color: Colors.black45,
                      offset: Offset(0, 2),
                    ),
                  ],

                ),
                child: AppElevatedButton(
                  onPress: () {
                    _pageController.nextPage(duration: const Duration(seconds: 1),
                        curve: Curves.easeInOutBack);
                  },
                  buttonName: 'Next',

                ),
              ),
            ),
          if(_currentPage==2)
            Padding(
              padding:const EdgeInsetsDirectional.symmetric(horizontal: 25),
              child: AppElevatedButton(onPress: (){
                Navigator.pushReplacementNamed(context, '/login_screen');
              }
                  ,buttonName: 'Start your Journey'),
            ),
          const SizedBox(height: 40),

        ],
      ),
    );
  }

  }


