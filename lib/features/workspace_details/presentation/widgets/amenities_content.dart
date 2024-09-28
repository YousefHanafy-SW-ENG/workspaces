import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workspace/core/helpers/app_images.dart';
import 'package:workspace/core/helpers/app_strings.dart';
import 'package:workspace/core/theming/app_colors.dart';
import 'package:workspace/features/workspace_details/presentation/widgets/detail_container.dart';

class AmenitiesContent extends StatelessWidget {
  final String firstAmenity;
  final String secondAmenity;
  const AmenitiesContent({super.key, required this.firstAmenity, required this.secondAmenity});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: AppColors.borderColor, width: 1.w),
        ),
      ),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            DetailContainer(title: firstAmenity,description: AppStrings.freeWifiDescription,icon: AppAssets.wifiIcon,),
            DetailContainer(title: secondAmenity,description: AppStrings.projectorDescription,icon: AppAssets.projectorIcon,),
          ],
        ),
      ),
    );
  }
}
