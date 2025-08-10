import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nova_app/models/bn_screens.dart';
import 'package:nova_app/modules/cart/cart_screen.dart';
import 'package:nova_app/modules/categories/search_screen.dart';
import 'package:nova_app/modules/home/home_screen.dart';
import 'package:nova_app/modules/settings/main_profile_screen.dart';
import 'package:nova_app/shared/network/style/app_colors.dart';
import 'package:nova_app/shared/widgets/custom_app_bar.dart';
import 'package:nova_app/shared/widgets/custom_profile_list_tile.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _selectedItemIndex = 0;
  late TapGestureRecognizer _tapGestureRecognizer;
  final List<BnScreens> _screens = <BnScreens>[
    BnScreens(
        title: 'Nova',
        firstIcon: Icons.shopping_cart_outlined,
        widget: const HomeScreen()),
    BnScreens(
        title: 'My Search',
        firstIcon: Icons.shopping_cart_outlined,
        widget: const SearchScreen()),
    BnScreens(
        title: 'My Bag',
        firstIcon: Icons.shopping_cart_outlined,
        widget:  CardScreen()),
    BnScreens(
        title: 'My Profile',
        firstIcon: Icons.shopping_cart_outlined,
        widget: const MainProfileScreen()),
  ];

  @override
  void initState() {
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer();
  }

  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: _screens[_selectedItemIndex].title,
          firstIcon: _screens[_selectedItemIndex].firstIcon,
          secondIcon: _screens[_selectedItemIndex].secondIcon,
        ),
        drawer: Drawer(
          // surfaceTintColor: Color(0xFFFFFFFF),
          backgroundColor: const Color(0xFFFFFFFF),
          elevation: 0,
          // shadowColor: Color(0xFFFFFFFF),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // UserAccountsDrawerHeader(
              //     // arrowColor: Color(0xFFFFFFFF),
              //     decoration: BoxDecoration(
              //       color: Color(0xFFFFFFFF),
              //     ),
              //     currentAccountPicture: CircleAvatar(
              //         backgroundImage:
              //             AssetImage('images/Profile - Small.png')),
              //     accountName: Text(
              //       'Rizale Greyrat',
              //       style: GoogleFonts.nunitoSans(
              //         color: Color(0xFF3E3E3E),
              //         fontSize: 16,
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //     accountEmail: Text('')),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 75),
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      child: const Image(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('images/Profile - Small.png'),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Rizale Greyrat',
                      style: GoogleFonts.nunitoSans(
                        color: const Color(0xFF3E3E3E),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
               CustomProfileListTile(
                title: 'Home',
                leadingIcon: Icons.home,
                trailingIcon: Icons.arrow_forward_ios_outlined,
                onPress: () {
                  Navigator.pushNamed(context, '/bottom_navigation_bar_screen');
                },
              ),
              CustomProfileListTile(
                title: 'Category',
                leadingIcon: Icons.category_outlined,
                trailingIcon: Icons.arrow_forward_ios_outlined,
                onPress: (){
                  Navigator.pushNamed(context, '/category_screen');
                },
              ),
               CustomProfileListTile(
                title: 'My favorites',
                leadingIcon: Icons.favorite_outline,
                trailingIcon: Icons.arrow_forward_ios_outlined,
                onPress: (){
                  Navigator.pushNamed(context, '/favorite_screen');
                },
              ),
              // SizedBox(height:30 ,),
              const CustomProfileListTile(
                title: 'Settings',
                leadingIcon: Icons.settings_outlined,
                trailingIcon: Icons.arrow_forward_ios_outlined,
              ),
              const CustomProfileListTile(
                title: 'Contact us',
                leadingIcon: Icons.contact_phone_outlined,
                trailingIcon: Icons.arrow_forward_ios_outlined,
              ),
               CustomProfileListTile(
                title: 'Help Center',
                leadingIcon: Icons.help_center_outlined,
                trailingIcon: Icons.arrow_forward_ios_outlined,
                onPress:() {
                  Navigator.pushNamed(context, '/help_center_screen');
                },
              ),
              const CustomProfileListTile(
                title: 'Logout',
                leadingIcon: Icons.logout_outlined,
                trailingIcon: Icons.arrow_forward_ios_outlined,
              ),
            ],
          ),
        ),

        // _screens[_selectedItemIndex].appBar,
        body: _screens[_selectedItemIndex].widget,
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            selectedFontSize: 15,
            unselectedFontSize: 10,
            elevation: 10,
            selectedIconTheme:
                const IconThemeData(color: AppColors.primaryColor),
            onTap: (int selectedItemIndex) {
              setState(() {
                _selectedItemIndex = selectedItemIndex;
              });
            },
            currentIndex: _selectedItemIndex,
            // selectedItemColor: const Color(0xFFFF7750),
            unselectedItemColor: const Color(0xFF3E3E3E),
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('images/HomeIcon.png')),
                  label: 'Home',
                  activeIcon: ImageIcon(AssetImage('images/ActiveHome.png'))),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('images/Search.png')),
                  label: 'Search',
                  activeIcon: ImageIcon(AssetImage('images/ActiveSearch.png'))),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('images/Bag.png')),
                  label: 'Bag',
                  activeIcon: ImageIcon(AssetImage('images/ActiveBag.png'))),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('images/Profile.png')),
                  label: 'Profile',
                  activeIcon:
                      ImageIcon(AssetImage('images/ActiveProfile.png'))),
              // ]),
            ]));
  }
}
