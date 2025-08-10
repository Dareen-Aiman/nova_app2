import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nova_app/shared/widgets/custom_app_bar.dart';

class FavoriteScreen extends StatefulWidget {
  static var pNames = [
    'white T-shirt',
    'Jacket',
    'Trouser',
    'chair',
  ];
  List<String> pSizes = ['M', 'L', 'S', 'L'];

  FavoriteScreen({Key? key}) : super(key: key);

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  Set<int> likeProducts = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, '/bottom_navigation_bar_screen');
                  },
                  icon: Icon(
                    Icons.arrow_back_outlined,
                    color: Color(0xFF3E3E3E),
                    size: 32,
                  ),
                )
                // Icon(Icons.arrow_back_outlined,color: Color(0xFF3E3E3E),size: 35,)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                  child: Text(
                    'Liked Product',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF3E3E3E),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                for (int i = 0;
                    i < FavoriteScreen.pNames.length && i < FavoriteScreen.pNames.length && i<widget.pSizes.length;
                    i++)
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    padding: EdgeInsets.only(right: 10),
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          margin: EdgeInsets.only(left: 8),
                          decoration: BoxDecoration(
                              color: Color(0xFFDEDEE0),
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.asset(
                            'images/${FavoriteScreen.pNames[i]}.png',
                            height: 70,
                            width: 70,
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: 15, top: 20, bottom: 25),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FavoriteScreen.pNames[i],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                // Text(
                                //   pNames[i].keys.first,
                                //   style: TextStyle(
                                //     color: Colors.black,
                                //     fontSize: 18,
                                //     fontWeight: FontWeight.bold,
                                //   ),
                                // ),

                                Row(
                                  children: [
                                    Text(
                                      'Size: ${widget.pSizes[i]}',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      widget.pSizes[i],
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              if(likeProducts.contains(i)){
                                likeProducts.remove(i);
                              }else{
                                likeProducts.add(i);
                              }
                            });
                          },
                          child: Icon(
                            likeProducts.contains(i)? Icons.favorite_outline : Icons.favorite_border,
                            color: likeProducts.contains(i) ? Colors.red : Colors.grey,
                            size: 30,
                          ),
                        )
                        // Column(
                        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //   crossAxisAlignment: CrossAxisAlignment.end,
                        //   children: [
                        //     Text(
                        //       "\$50.55",
                        //       style: TextStyle(
                        //         color: Colors.redAccent,
                        //         fontSize: 18,
                        //         fontWeight: FontWeight.bold,
                        //       ),
                        //     ),
                        //     Container(
                        //       height: 25,
                        //       width: 70,
                        //       decoration: BoxDecoration(
                        //         color: Colors.white,
                        //         borderRadius: BorderRadius.circular(8),
                        //       ),
                        //       child: Row(
                        //         mainAxisAlignment:
                        //             MainAxisAlignment.spaceBetween,
                        //         crossAxisAlignment: CrossAxisAlignment.center,
                        //         children: [
                        //           Icon(CupertinoIcons.minus),
                        //           Text("01"),
                        //           Icon(CupertinoIcons.plus),
                        //         ],
                        //       ),
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
