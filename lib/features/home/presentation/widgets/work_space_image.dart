import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workspace/core/helpers/extensions.dart';
import 'package:workspace/core/theming/app_colors.dart';

class WorkSpaceImage extends StatelessWidget {
  final String image;
  const WorkSpaceImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.r),
      child: Container(
        width: double.infinity,
        height: context.height / 5.2,
        decoration: BoxDecoration(
          border: Border.all(width: 1.w, color: AppColors.borderColor),
        ),
        child: Image.asset(
          image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
