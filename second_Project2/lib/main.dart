import 'dart:developer';
import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            title: const Text(
              'First APP',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'NunitoSans',
                fontWeight: FontWeight.w700,
                // fontStyle: FontStyle.italic
              ),
            ),
            centerTitle: Platform.isAndroid ? false : true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            iconTheme:  const IconThemeData(color: Colors.black),
            // titleSpacing: 0,
            //*************************************************
            // leading: InkWell(
            //   // borderRadius: BorderRadius.circular(50),
            //   onTap: (){
            //     print('On Tap : InkWell Widget');
            //   },
            //   child: Icon(Icons.arrow_back_ios),
            // ),
            // leadingWidth: 0,
            // leading: GestureDetector(
            //   onTap: () {
            //     print('OnTap: Gesture Detector');
            //   },
            //   child: Icon(Icons.arrow_back_ios),
            // ),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                // color: Colors.white,
                size: 24,
              ),
              onPressed: () {
                // print('Icon Button');
                debugPrint('Icon Button');
                log('Icon Button');
              },
              // color: Colors.red,
              iconSize: 14,
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.logout),
              ),
              PopupMenuButton<int>(
                  onSelected: (selectedItem) {
                    log('Item : $selectedItem');
                    if (selectedItem == 1) {
                      log('FAQs Item');
                    } else if (selectedItem == 2) {
                      log('Info Item');
                    }
                  },
                  onCanceled: () {
                    debugPrint('on Canceled');
                  },
                  //****************************************
                  elevation: 0,
                  // color: Colors.blue.shade100,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.blue.shade700, width: 2),
                  ),
                  //****************************************
                  tooltip: 'Menu Button',
                  enabled: true,
                  //****************************************
                  iconSize: 24,
                  icon: const Icon(
                    Icons.more_horiz,
                    // color: Colors.white,
                    size: 24,
                  ),
                  offset: const Offset(-30, 35),
                  padding: const EdgeInsets.only(right: 10),
                  //****************************************
                  itemBuilder: (context) {
                    return const [
                      PopupMenuItem(
                        enabled: false,
                        value: 1,
                        height: 0,
                        padding: EdgeInsets.zero,
                        child: Text('FAQs'),
                        // onTap: (){
                        //   log('on Tap : FAQs ');
                        // },
                      ),
                      PopupMenuDivider(
                        // height: 50,
                      ),
                      PopupMenuItem(
                        value: 2,
                        child: Text('Info'),
                      ),
                    ];
                  })
            ],
          ),
          body: Stack(
            children: [
              // const Image(
              //   height: double.infinity,
              //   fit: BoxFit.cover,
              //   image: NetworkImage(
              //       'https://img.freepik.com/free-vector/hand-drawn-collage-design_23-2149543516.jpg?w=996&t=st=1690013861~exp=1690014461~hmac=bdbd8a5b52cfe16f47c40e25173916ba524716003f8abbab1620cded6e232eef'),
              // ),
              // Image.network(
              //   'https://img.freepik.com/free-vector/hand-drawn-collage-design_23-2149543516.jpg?w=996&t=st=1690013861~exp=1690014461~hmac=bdbd8a5b52cfe16f47c40e25173916ba524716003f8abbab1620cded6e232eef',
              //   height: double.infinity,
              //   fit: BoxFit.cover,
              // ),
              // ImageFiltered(
              //   imageFilter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              //   child: Image.network(
              //     'https://img.freepik.com/free-vector/hand-drawn-collage-design_23-2149543516.jpg?w=996&t=st=1690013861~exp=1690014461~hmac=bdbd8a5b52cfe16f47c40e25173916ba524716003f8abbab1620cded6e232eef',
              //     height: double.infinity,
              //     fit: BoxFit.cover,
              //   ),
              // ),
              // const Image(
              //   height: double.infinity,
              //   fit: BoxFit.cover,
              //   image: AssetImage('images/image_1.jpg'),
              // ),
              Image.asset(
                'images/image_1.jpg',
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              SafeArea(
                child: Center(
                  child: Text(
                    'Welcome To Flutter',
                    style: TextStyle(
                      // color: Colors.red.shade200,
                      // color: Colors.red[200],
                      color: const Color(0xA3C42A2A),
                      backgroundColor: Colors.blue.shade100,
                      //*************************************
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      //*************************************
                      letterSpacing: 2,
                      wordSpacing: 10,
                      //*************************************
                      decorationThickness: 2,
                      decorationColor: Colors.black,
                      decorationStyle: TextDecorationStyle.wavy,
                      decoration: TextDecoration.combine([
                        TextDecoration.overline,
                        TextDecoration.underline,
                      ]),
                    ),
                  ),
                ),
              ),
              // Align(
              //   alignment: AlignmentDirectional.bottomCenter,
              //   child: Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Text('Welcome To Dart'),
              //   ),
              //  ),
              const Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Text(
                  'Welcome To Dart',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          )),
    );
  }
}
