import 'package:flutter/material.dart';

import 'package:reservations_app/core/themes/app_colors.dart';

class BottomNavBarItem extends StatelessWidget {
  const BottomNavBarItem({super.key, this.onTap, required this.selectIndex});
  final void Function(int)? onTap;
  final int selectIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      iconSize: 35,
      selectedFontSize: 15,
      backgroundColor: ColorsManager.lightBlue,
      currentIndex: selectIndex,
      onTap: onTap,
      selectedItemColor: ColorsManager.mainBlue,
      unselectedItemColor: ColorsManager.simpledarkBlue,
      items: const [
        BottomNavigationBarItem(
          label: 'Home',
          tooltip: 'Home',
          activeIcon: Icon(
            Icons.home_filled,
            color: ColorsManager.simpledarkBlue,
            // size: 35,
          ),
          icon: Icon(
            Icons.home_outlined,
            color: ColorsManager.mainBlue,
            // size: 35,
          ),
        ),
        BottomNavigationBarItem(
          label: 'My Appointment',
          tooltip: 'My Appoint',
          activeIcon: Icon(
            Icons.search_rounded,
            color: ColorsManager.simpledarkBlue,
            // size: 35,
          ),
          icon: Icon(
            Icons.search_outlined,
            color: ColorsManager.mainBlue,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Profile',
          tooltip: 'Profile',
          activeIcon:
              Icon(Icons.person_4_rounded, color: ColorsManager.simpledarkBlue),
          icon: Icon(
            Icons.person_4_outlined,
            color: ColorsManager.mainBlue,
          ),
        ),
      ],
    );
  }
}
