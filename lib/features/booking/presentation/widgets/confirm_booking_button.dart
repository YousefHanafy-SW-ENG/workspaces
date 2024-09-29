import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:workspace/core/helpers/app_strings.dart';
import 'package:workspace/core/helpers/extensions.dart';
import 'package:workspace/core/routing/routes.dart';
import 'package:workspace/core/theming/app_colors.dart';
import 'package:workspace/core/widgets/button_bottom_nav_bar.dart';
import 'package:workspace/core/widgets/primary_button.dart';
import 'package:workspace/features/booking/presentation/cubit/booking_cubit.dart';
import 'package:workspace/features/booking/presentation/cubit/booking_states.dart';
import 'package:workspace/features/booking/presentation/widgets/booking_details_arguments.dart';

class ConfirmBookingButton extends StatefulWidget {
  final String name;
  final String location;
  final String capacity;
  final List<String> availableAmenities;

  const ConfirmBookingButton({
    super.key,
    required this.name,
    required this.location,
    required this.capacity,
    required this.availableAmenities,
  });

  @override
  ConfirmBookingButtonState createState() => ConfirmBookingButtonState();
}

class ConfirmBookingButtonState extends State<ConfirmBookingButton> {
  @override
  void initState() {
    super.initState();
    // Reset the cubit fields when the button widget is initialized
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<BookingCubit>().resetFields();
    });
  }

  @override
  Widget build(BuildContext context) {
    BookingCubit cubit = context.read<BookingCubit>();
    return BlocConsumer<BookingCubit, BookingStates>(
      listener: (context, state) {
        if (state is BookingSuccessState) {
          context.pushNamed(
            Routes.bookingDetailsScreen,
            arguments: BookingDetailsArguments(
              name: widget.name,
              location: widget.location,
              capacity: widget.capacity,
              availableAmenities: widget.availableAmenities,
              date: cubit.date,
              checkInTime: cubit.checkInTime,
              checkOutTime: cubit.checkOutTime,
            ),
          );
        }
        if (state is BookingErrorState) {
          Fluttertoast.showToast(
            msg: state.error,
            toastLength: Toast.LENGTH_SHORT,
            textColor: Colors.white,
            fontSize: 12.sp,
          );
        }
      },
      builder: (context, state) {
        return ButtonBottomNavBar(
          button: PrimaryButton(
            text: AppStrings.confirmBooking,
            fillColor: cubit.notEmptyFields
                ? AppColors.blueColor
                : AppColors.greyColor2,
            borderColor: cubit.notEmptyFields
                ? AppColors.blueColor
                : AppColors.greyColor2,
            textColor: cubit.notEmptyFields ? Colors.white : AppColors.greyColor3,
            onTap: () {
                cubit.confirmBooking();
            },
          ),
        );
      },
    );
  }
}
