import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workspace/core/helpers/spacer.dart';
import 'package:workspace/core/theming/app_colors.dart';
import 'package:workspace/core/theming/styles.dart';

class IconTextGreyContainer extends StatelessWidget {
  final String text;
  final String icon;
  const IconTextGreyContainer({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.w),
      child: Container(
        decoration: BoxDecoration(
          color:AppColors.greyColor,
          borderRadius: BorderRadius.circular(100.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 6.h),
          child: Row(
            children: [
              SvgPicture.asset(icon),
              horizontalSpace(8),
              Text(text,style: TextStyles.font14BlackMedium,),
            ],
          ),
        ),
      ),
    );
  }
}
