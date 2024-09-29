import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workspace/core/helpers/app_strings.dart';
import 'package:workspace/core/helpers/extensions.dart';
import 'package:workspace/core/helpers/spacer.dart';
import 'package:workspace/core/widgets/primary_app_bar.dart';
import 'package:workspace/core/widgets/primary_padding.dart';
import 'package:workspace/features/booking/presentation/cubit/booking_cubit.dart';
import 'package:workspace/features/booking/presentation/widgets/booking_calendar.dart';
import 'package:workspace/features/booking/presentation/widgets/check_in_time_slots.dart';
import 'package:workspace/features/booking/presentation/widgets/checkout_time_slots.dart';
import 'package:workspace/features/booking/presentation/widgets/confirm_booking_button.dart';
import 'package:workspace/features/booking/presentation/widgets/time_picker.dart';

class BookingScreen extends StatelessWidget {
  final String name;
  final String location;
  final String capacity;
  final List<String> availableAmenities;
  const BookingScreen({
    super.key,
    required this.name,
    required this.location,
    required this.capacity,
    required this.availableAmenities
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, context.height * 0.08),
        child: const PrimaryAppBar(
          title: AppStrings.selectDateAndTime,
          hasLeadingIcon: true,
          isTitleCentered: false,
        ),
      ),
      body: PrimaryPadding(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BookingCalendar(),
              TimePicker(
                title: AppStrings.checkIn,
                timeSlots: checkInTimeSlots,
                selectedTime: context.read<BookingCubit>().checkInTime,
                onTimeSelected: (time) {
                  context.read<BookingCubit>().updateCheckInTime(time);
                },
                onIndexSelected: (index){
                  context.read<BookingCubit>().updateCheckInIndex(index);
                },
              ),
              TimePicker(
                title: AppStrings.checkOut,
                timeSlots: checkoutTimeSlots,
                selectedTime: context.read<BookingCubit>().checkOutTime,
                onTimeSelected: (time) {
                  context.read<BookingCubit>().updateCheckOutTime(time);
                },
                onIndexSelected: (index){
                  context.read<BookingCubit>().updateCheckOutIndex(index);
                },
              ),
              verticalSpace(50.h),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ConfirmBookingButton(
        name: name,
        location: location,
        capacity: capacity,
        availableAmenities: availableAmenities,
      ),
    );
  }
}
