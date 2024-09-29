import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workspace/core/dependency_injection/setup_locator.dart';
import 'package:workspace/core/routing/routes.dart';
import 'package:workspace/features/booking/presentation/cubit/booking_cubit.dart';
import 'package:workspace/features/booking/presentation/screens/booking_details_screen.dart';
import 'package:workspace/features/booking/presentation/screens/booking_screen.dart';
import 'package:workspace/features/booking/presentation/widgets/booking_arguments.dart';
import 'package:workspace/features/booking/presentation/widgets/booking_details_arguments.dart';
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
      case Routes.bookingScreen:
        if (arguments is BookingArguments) {
          return MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (context) => getIt<BookingCubit>(),
               child: BookingScreen(
              name: arguments.name,
              location: arguments.location,
              capacity: arguments.capacity,
              availableAmenities: arguments.availableAmenities,
            ),
            ),
          );
        }
        return null;
      case Routes.bookingDetailsScreen:
        if (arguments is BookingDetailsArguments) {
          return MaterialPageRoute(
            builder: (_) => BookingDetailsScreen(
              name: arguments.name,
              location: arguments.location,
              capacity: arguments.capacity,
              availableAmenities: arguments.availableAmenities,
              date: arguments.date,
              checkInTime: arguments.checkInTime,
              checkOutTime: arguments.checkOutTime,
            ),
          );
        }
        return null;
      default:
        return null;
    }
  }
}
