import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/product_card.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/main_profile_screen');
              },
              icon: const Icon(Icons.arrow_back_outlined),
              color: const Color(0xFF3E3E3E)),
          title: Text(
            'Search product',
            style: GoogleFonts.nunitoSans(
              fontSize: 14,
              color: const Color(0xFF3E3E3E),
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search_outlined, color: Color(0xFF3E3E3E)),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: MySearchDelegate(),
                );
              },
            ),
            // IconButton(
            //     onPressed: () {},
            //     icon: Icon(Icons.arrow_back_outlined),
            //     color: Color(0xFF3E3E3E)),
          ],
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 25,
              // vertical: 0,
            ),
            child: Text('Newest Product',
                style: GoogleFonts.nunitoSans(
                  color: const Color(0xFF3E3E3E),
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                )),
          ),

          const SizedBox(
            height: 20,
          ),
          Container(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 25),
              alignment: AlignmentDirectional.topStart,
              child: Image.asset('images/ExampleNewestProduct.png')),
          const SizedBox(height:30 ,),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 25,
              // vertical: 0,
            ),
            child: Text('Related Product',
                style: GoogleFonts.nunitoSans(
                  color: const Color(0xFF3E3E3E),
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                )),
          ),
          const SizedBox(height:20 ,),
          Expanded(
            child: GridView.builder(
              padding:
                  const EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 0),
              physics: const BouncingScrollPhysics(),
              itemCount: 20,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 152 / 255,
              ),
              itemBuilder: (BuildContext context, int index) {
                return ProductCard(
                    productName: 'Nike Jordan 1 Retro Yellow',
                    price: '\$608',
                    onPress: () {});
              },
            ),

          )
        ]));
  }
}

class MySearchDelegate extends SearchDelegate {
  List<String> searchResults = [
    'Nearest Location',
    'Free Shipping',
    'Ready Stock',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          showResults(context);
        },
        icon: const Icon(Icons.search_outlined),
        color: const Color(0xFF3E3E3E),
      )
    ];
//     IconButton(
//       onPressed: () => close(context, null),
//       icon: const Icon(Icons.arrow_back),
//       color: const Color(0xFF3E3E3E),
//     )
// ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        if (query.isEmpty) {
          close(context, null);
        } else {
          query = '';
        }
      },
      icon: const Icon(Icons.clear_outlined),
      color: const Color(0xFFFF7750),
    );
  }

  @override
  Widget buildResults(BuildContext context) => Center(
        child: Text(
          query,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = searchResults.where((searchResult) {
      final result = searchResult.toLowerCase();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];

        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;
            showResults(context);
          },
        );
      },
    );
  }
}
