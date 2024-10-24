import 'package:flutter/material.dart';
import 'package:reservations_app/core/di_dependency/dependency_injection.dart';
import 'package:reservations_app/core/routing/routes.dart';
import 'package:reservations_app/features/book_an_appointment/logic/make_an_appoint_cubit/make_an_appoint_cubit.dart';
import 'package:reservations_app/features/book_an_appointment/ui/book_appoint_details.dart';
import 'package:reservations_app/features/book_an_appointment/ui/book_appointment_view.dart';
import 'package:reservations_app/features/bottom_navigation_bar/bottom_nav_bar_widget.dart';
import 'package:reservations_app/features/doctor_details/ui/doctor_details_screen.dart';
import 'package:reservations_app/features/home/logic/home_cubit/home_cubit.dart';
import 'package:reservations_app/features/home/ui/home_screen.dart';
import 'package:reservations_app/features/login/logic/login_cubit/login_cubit.dart';

import 'package:reservations_app/features/login/ui/login_screen.dart';
import 'package:reservations_app/features/my_appointment_screen/my_appoint_view.dart';
import 'package:reservations_app/features/onboarding/onboarding_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservations_app/features/profile_page/profile_page.dart';
import 'package:reservations_app/features/search_screen/logic/search_cubit/search_cubit.dart';
import 'package:reservations_app/features/search_screen/ui/widgets/search_screen.dart';
import 'package:reservations_app/features/signup/logic/signup_cubit/signup_cubit.dart';
import 'package:reservations_app/features/signup/ui/signup_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // this arguments to be passed in any screen like this (argument as className)
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );

      case Routes.signupScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );

      case Routes.bottomNavigationBarView:
        return MaterialPageRoute(
          builder: (_) => const BottomNavBarWidget(),
        );

      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit(getIt())..getSpecializations(),
            child: const HomeScreen(),
          ),
        );
      case Routes.doctorDetails:
        return MaterialPageRoute(
          settings: RouteSettings(arguments: arguments),
          builder: (_) => const DoctorDetails(),
        );
      case Routes.bookAppointment:
        return MaterialPageRoute(
          settings: RouteSettings(arguments: arguments),
          builder: (_) => BlocProvider(
            create: (context) => MakeAnAppointCubit(getIt()),
            child: const BookAppointmentView(),
          ),
        );
      case Routes.bookAppointmentDetails:
        return MaterialPageRoute(
          settings: RouteSettings(arguments: arguments),
          builder: (_) => const BookAppointDetails(),
        );
      case Routes.searchScreen:
        return MaterialPageRoute(
          settings: RouteSettings(arguments: arguments),
          builder: (_) => BlocProvider(
            create: (context) => SearchCubit(getIt()),
            child: const SearchScreen(),
          ),
        );
      case Routes.profileScreen:
        return MaterialPageRoute(
          settings: RouteSettings(arguments: arguments),
          builder: (_) => const ProfilePage(),
        );
      case Routes.myAppointment:
        return MaterialPageRoute(
          settings: RouteSettings(arguments: arguments),
          builder: (_) => const MyAppointView(),
        );

      default:
        return null;
    }
  }
}
