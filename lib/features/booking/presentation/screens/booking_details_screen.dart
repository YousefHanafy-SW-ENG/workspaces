import 'package:flutter/material.dart';
import 'package:workspace/core/helpers/app_strings.dart';
import 'package:workspace/core/helpers/extensions.dart';
import 'package:workspace/core/routing/routes.dart';
import 'package:workspace/core/theming/app_colors.dart';
import 'package:workspace/core/widgets/button_bottom_nav_bar.dart';
import 'package:workspace/core/widgets/primary_button.dart';
import 'package:workspace/features/booking/presentation/widgets/booking_confirmation_icon.dart';
import 'package:workspace/features/booking/presentation/widgets/booking_confirmation_text.dart';
import 'package:workspace/features/booking/presentation/widgets/confirmation_details_container.dart';

class BookingDetailsScreen extends StatelessWidget {
  final String name;
  final String location;
  final String capacity;
  final List<String> availableAmenities;
  final String date;
  final String checkInTime;
  final String checkOutTime;

  const BookingDetailsScreen({
    super.key,
    required this.name,
    required this.location,
    required this.capacity,
    required this.availableAmenities,
    required this.date,
    required this.checkInTime,
    required this.checkOutTime,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BookingConfirmationIcon(),
              const BookingConfirmationText(),
              ConfirmationDetailsContainer(
                title: AppStrings.workspaceDetails,
                details: [
                  {'detail': AppStrings.workspace, 'value': name},
                  {'detail': AppStrings.location, 'value': location},
                  {'detail': AppStrings.capabilities, 'value': capacity},
                  {
                    'detail': AppStrings.amenities,
                    'value': '${availableAmenities[0]},${availableAmenities[1]}',
                  },
                ],
              ),
              ConfirmationDetailsContainer(
                title: AppStrings.bookingDetails,
                details: [
                  {'detail': AppStrings.date, 'value': date},
                  {'detail': AppStrings.time, 'value': '$checkInTime - $checkOutTime'},
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ButtonBottomNavBar(
        button: PrimaryButton(
          text: AppStrings.exploreMoreWorkSpace,
          fillColor: Colors.white,
          borderColor: AppColors.blueColor,
          textColor: AppColors.blueColor,
          onTap: () {
            context.pushAndRemoveUntil(Routes.homeScreen);
            },
        ),
      ),
    );
  }
}
