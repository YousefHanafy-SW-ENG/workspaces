import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workspace/core/helpers/app_strings.dart';
import 'package:workspace/core/helpers/spacer.dart';
import 'package:workspace/core/theming/styles.dart';
import 'package:workspace/core/widgets/primary_padding.dart';

class BookingConfirmationText extends StatelessWidget {
  const BookingConfirmationText({super.key});

  @override
  Widget build(BuildContext context) {
    return PrimaryPadding(
      child: Padding(
        padding: EdgeInsets.only(bottom: 32.h),
        child: Center(
          child: Column(
            children: [
              Text(AppStrings.bookingConfirmationText,style: TextStyles.font18BlackSemiBold,),
              verticalSpace(16.h),
              Text(AppStrings.bookingConfirmationDescription,style: TextStyles.font14BlackRegular,textAlign: TextAlign.center,),
            ],
          ),
        ),
      ),
    );
  }
}
