import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reservations_app/core/di_dependency/dependency_injection.dart';
import 'package:reservations_app/core/helpers/extentions.dart';
import 'package:reservations_app/core/routing/routes.dart';
import 'package:reservations_app/core/themes/app_colors.dart';
import 'package:reservations_app/features/bottom_navigation_bar/bottom_nav_bar_item.dart';
import 'package:reservations_app/features/home/logic/home_cubit/home_cubit.dart';
import 'package:reservations_app/features/home/ui/home_screen.dart';
import 'package:reservations_app/features/my_appointment_screen/my_appoint_view.dart';
import 'package:reservations_app/features/profile_page/profile_page.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int selectedIndex = 0;
  late final List<Widget> screens;

  @override
  void initState() {
    screens = [
      BlocProvider(
        create: (context) => HomeCubit(getIt())..getSpecializations(),
        child: const HomeScreen(),
      ),
      const MyAppointView(),
      const ProfilePage(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: FloatingActionButton(
            tooltip: 'Search',
            backgroundColor: ColorsManager.mainBlue.withOpacity(.4),
            elevation: .5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            onPressed: () {
              context.pushNamed(Routes.searchScreen);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: ColorsManager.mainBlue,
              ),
              child: SvgPicture.asset(
                'assets/svgs/navSearch.svg',
                color: ColorsManager.simpledarkBlue,
                fit: BoxFit.fill,
              ),
            )),
        bottomNavigationBar: BottomNavBarItem(
          selectIndex: selectedIndex,
          onTap: (val) {
            setState(() {
              selectedIndex = val;
            });
          },
        ),
        body: screens.elementAt(selectedIndex)
        // body: screens[selectedIndex],
        );
  }
}
