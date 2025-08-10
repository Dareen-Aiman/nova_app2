import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nova_app/models/bn_screens.dart';
import 'package:nova_app/shared/widgets/custom_app_bar.dart';
import 'package:nova_app/shared/widgets/custom_profile_list_tile.dart';

class MainProfileScreen extends StatefulWidget {
  const MainProfileScreen({super.key});

  @override
  State<MainProfileScreen> createState() => _MainProfileScreenState();
}

class _MainProfileScreenState extends State<MainProfileScreen> {
  // final List<BnScreens> _screens = <BnScreens>[
  // BnScreens(
  // title: 'My Profile',
  // firstIcon: Icons.shopping_cart_outlined,
  // widget: const MainProfileScreen()),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:  CustomAppBar(title: 'My Profile',firstIcon: Icons.shopping_cart_outlined,),
      // appBar: AppBar(
      //   leading: Icon(Icons.arrow_back_outlined,color:Colors.transparent),
      //   backgroundColor: const Color(0xFFFAFAFA),
      //   elevation: 0,
      //   centerTitle: true,
      //   title: Text(
      //     'My Profile',
      //     style: GoogleFonts.nunitoSans(
      //       fontSize: 22,
      //       fontWeight: FontWeight.bold,
      //       color: const Color(0xFF3E3E3E),
      //     ),
      //   ),
      //   actions: [
      //
      //     IconButton(
      //       onPressed: () {},
      //       icon: const Icon(Icons.shopping_cart_outlined),
      //       color: const Color(0xFF3E3E3E),
      //     ),
      //     IconButton(
      //       onPressed: () {},
      //       icon: const Icon(Icons.chat_outlined),
      //       color: const Color(0xFF3E3E3E),
      //     ),
      //   ],
      // ),
      body: ListView(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        // reverse: true,
        children: [
          const SizedBox(
            height:40,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: CircleAvatar(
              backgroundColor: Color(0xFFE5E5EA),
              radius: 60,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Dareen Ashour',
            textAlign: TextAlign.center,
            style: GoogleFonts.nunitoSans(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          //  CustomProfileListTile(title: 'Home', leadingIcon: Icons.home,trailingIcon: Icons.arrow_forward_ios_outlined,
          // onPress: (){
          //   Navigator.pushNamed(context, '/bottom_navigation_bar_screen');
          // }),
           CustomProfileListTile(
            title: 'Edit Profile',
            leadingIcon: Icons.person_outline_outlined,
            trailingIcon: Icons.arrow_forward_ios_outlined,
            marginBottom: 8,
            onPress: (){
                Navigator.pushNamed(context, '/first_edit_for_profile_screen');
            },
          ),
          //  CustomProfileListTile(
          //   title: 'Search Screen',
          //   leadingIcon: Icons.search_outlined,
          //   trailingIcon: Icons.arrow_forward_ios_outlined,
          //   marginBottom: 8,
          //   onPress:() {
          //     Navigator.pushNamed(context, '/search_screen');
          //   },
          // ),
          const CustomProfileListTile(
            title: 'My Purchases',
            leadingIcon: Icons.list_alt_outlined,
            trailingIcon: Icons.arrow_forward_ios_outlined,
            marginBottom: 8,
          ),
          const CustomProfileListTile(
            title: 'My Wallet',
            leadingIcon: Icons.wallet_outlined,
            trailingIcon: Icons.arrow_forward_ios_outlined,
            marginBottom: 8,
          ),
           const CustomProfileListTile(
            title: 'Recent Viewed',
            leadingIcon: Icons.access_time_outlined,
            trailingIcon: Icons.arrow_forward_ios_outlined,
            marginBottom: 8,

          ),

          const CustomProfileListTile(
            title: 'Logout',
            leadingIcon: Icons.logout_outlined,
            marginBottom: 8,
          ),
        ],
      ),
    );
  }
}
