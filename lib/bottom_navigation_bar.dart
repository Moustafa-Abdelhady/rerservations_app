import 'package:flutter/material.dart';
import 'package:reservations_app/core/themes/app_colors.dart';
import 'package:reservations_app/features/home/ui/home_screen.dart';
import 'package:reservations_app/features/profile_page/profile_page.dart';
import 'package:reservations_app/features/search_screen/search_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    int selectIndex = 0;
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    final List<Widget> screens = [
      const SearchScreen(),
      const HomeScreen(),
      const ProfilePage(),
    ];
    return Scaffold(
      key: scaffoldKey,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 4,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 24,
        backgroundColor: ColorsManager.grey,
        currentIndex: selectIndex,
        onTap: (index) {
          setState(() {
            selectIndex == index;
          });
        },
        selectedItemColor: ColorsManager.mainBlue,
        unselectedItemColor: ColorsManager.lightBlue,
        items: [
          BottomNavigationBarItem(
            icon: selectIndex == 0
                ? const Icon(
                    Icons.home_filled,
                    color: Colors.red,
                    // size: 35,
                  )
                : const Icon(
                    Icons.home_outlined,
                    color: Colors.green,
                    // size: 35,
                  ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: selectIndex == 1
                  ? const Icon(
                      Icons.search_rounded,
                      color: Colors.red,
                      // size: 35,
                    )
                  : const Icon(
                      Icons.search_outlined,
                      color: Colors.green,
                    ),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: selectIndex == 2
                  ? const Icon(
                      Icons.person_4_rounded,
                      color: Colors.red,
                    )
                  : const Icon(
                      Icons.person_4_outlined,
                      color: Colors.green,
                    ),
              label: 'Profile'),
        ],
      ),
      body: screens[selectIndex],
    );
  }
}
