import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workspace/core/theming/app_colors.dart';
import 'package:workspace/core/theming/font_weight_helper.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  final Color? fillColor;
  final Color? borderColor;
  final Color? textColor;
  final double? radius;
  const PrimaryButton({super.key, required this.text, required this.onTap, this.fillColor, this.radius, this.borderColor, this.textColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>onTap(),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
            border: Border.all(color: borderColor??AppColors.blueColor,width: 1.w),
            color: fillColor??AppColors.blueColor
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeightHelper.semiBold,
              color: textColor??Colors.white,
            )
          ),
        ),
      ),
    );
  }
}
