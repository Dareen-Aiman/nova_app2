import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/custom_profile_list_tile.dart';

class MainProfileScreen extends StatelessWidget {
  const MainProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_outlined,color:Colors.transparent),
        backgroundColor: const Color(0xFFFAFAFA),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'My Profile',
          style: GoogleFonts.nunitoSans(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF3E3E3E),
          ),
        ),
        actions: [
          
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
            color: const Color(0xFF3E3E3E),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.chat_outlined),
            color: const Color(0xFF3E3E3E),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        // reverse: true,
        children: [
          const SizedBox(
            height: 24,
          ),
          const CircleAvatar(
            backgroundColor: Color(0xFFE5E5EA),
            radius: 60,
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
          const CustomProfileListTile(
            title: 'My Profile',
            leadingIcon: Icons.account_circle_outlined,
            trailingIcon: Icons.arrow_forward_ios_outlined,
            marginBottom: 8,
          ),
           CustomProfileListTile(
            title: 'Search Screen',
            leadingIcon: Icons.search_outlined,
            trailingIcon: Icons.arrow_forward_ios_outlined,
            marginBottom: 8,
            onPress:() {
              Navigator.pushNamed(context, '/search_screen');
            },
          ),
          const CustomProfileListTile(
            title: 'My Address',
            leadingIcon: Icons.location_on_outlined,
            trailingIcon: Icons.arrow_forward_ios_outlined,
            marginBottom: 8,
          ),
          const CustomProfileListTile(
            title: 'Notification',
            leadingIcon: Icons.notifications_none_outlined,
            trailingIcon: Icons.arrow_forward_ios_outlined,
            marginBottom: 8,
          ),
          const CustomProfileListTile(
            title: 'Help Center',
            leadingIcon: Icons.verified_user_outlined,
            trailingIcon: Icons.arrow_forward_ios_outlined,
            marginBottom: 8,
          ),

          const CustomProfileListTile(
            title: 'Logout',
            leadingIcon: Icons.logout_outlined,
            trailingIcon: Icons.arrow_forward_ios_outlined,
            marginBottom: 8,
          ),
        ],
      ),
    );
  }
}
