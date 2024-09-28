import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workspace/core/dependency_injection/setup_locator.dart';
import 'package:workspace/core/routing/routes.dart';
import 'package:workspace/features/home/presentation/cubit/home_cubit.dart';
import 'package:workspace/features/home/presentation/screens/home_screen.dart';
import 'package:workspace/features/workspace_details/presentation/screens/workspace_details_screen.dart';
import 'package:workspace/features/workspace_details/presentation/widgets/workspace_details_arguments.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<HomeCubit>()..fetchWorkSpaces(),
            child: const HomeScreen(),
          ),
        );
      case Routes.workspaceDetailsScreen:
        if (arguments is WorkspaceDetailsArguments) {
          return MaterialPageRoute(
            builder: (_) => WorkspaceDetailsScreen(
              name: arguments.name,
              location: arguments.location,
              capacity: arguments.capacity,
              availableAmenities: arguments.availableAmenities,
            ),
          );
        }
        return null;
      default:
        return null;
    }
  }
}
