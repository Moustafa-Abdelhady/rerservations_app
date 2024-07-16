import 'package:flutter/material.dart';
import 'package:reservations_app/core/di_dependency/dependency_injection.dart';
import 'package:reservations_app/core/routing/routes.dart';
import 'package:reservations_app/features/home/logic/home_cubit/home_cubit.dart';
import 'package:reservations_app/features/home/ui/home_screen.dart';
import 'package:reservations_app/features/login/logic/login_cubit/login_cubit.dart';

import 'package:reservations_app/features/login/ui/login_screen.dart';
import 'package:reservations_app/features/onboarding/onboarding_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit(getIt()..getSpecialization()),
            child: const HomeScreen(),
          ),
        );

      default:
        return null;
    }
  }
}
