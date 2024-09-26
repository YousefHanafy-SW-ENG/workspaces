import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workspace/core/dependency_injection/setup_locator.dart';
import 'package:workspace/core/routing/routes.dart';
import 'package:workspace/features/home/presentation/cubit/home_cubit.dart';
import 'package:workspace/features/home/presentation/screens/home_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) =>
              BlocProvider(
                create: (context) => getIt<HomeCubit>()..fetchWorkSpaces(),
                child: const HomeScreen(),
              ),
        );
      default:
        return null;
    }
  }
}