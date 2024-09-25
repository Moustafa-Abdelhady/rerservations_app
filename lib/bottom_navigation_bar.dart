import 'package:flutter/material.dart';
import 'package:reservations_app/core/routing/routes.dart';
import 'package:reservations_app/features/home/ui/home_screen.dart';
import 'package:reservations_app/features/profile_page/profile_page.dart';
import 'package:reservations_app/features/search_screen/search_screen.dart';

class BottomNavigationBar extends StatefulWidget {
  const BottomNavigationBar({super.key});

  @override
  State<BottomNavigationBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    int _selectIndex = 0;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
    final List<Widget> screens = [
      const HomeScreen(),
      const SearchScreen(),
      const ProfilePage(),
      const SizedBox.shrink(),
    ];
    return Scaffold(
      key: _scaffoldKey,
      body: screens[_selectIndex],
      drawer: const MenuDrawer(),
    );
  }
}
