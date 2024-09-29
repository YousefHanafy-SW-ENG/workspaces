import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workspace/core/helpers/app_images.dart';
import 'package:workspace/core/widgets/primary_padding.dart';

class BookingConfirmationIcon extends StatelessWidget {
  const BookingConfirmationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return  PrimaryPadding(
      child: Padding(
        padding: EdgeInsets.only(top: 20.h),
        child: Center(
          child: SvgPicture.asset(AppAssets.confirmationIcon),
        ),
      ),
    );
  }
}
