import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workspace/core/helpers/app_images.dart';
import 'package:workspace/core/helpers/app_strings.dart';
import 'package:workspace/core/helpers/spacer.dart';
import 'package:workspace/core/theming/app_colors.dart';
import 'package:workspace/features/home/presentation/widgets/icon_text_grey_container.dart';
import 'package:workspace/features/home/presentation/widgets/icon_text_row.dart';
import 'package:workspace/features/home/presentation/widgets/work_space_image.dart';
import 'package:workspace/features/home/presentation/widgets/workspace_name.dart';

class WorkSpaceItem extends StatelessWidget {
  const WorkSpaceItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(width: 1.w, color: AppColors.borderColor),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 8.w,right: 8.w,top: 8.h,bottom: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WorkSpaceImage(image: AppAssets.workspaceImageOne,),
              const WorkSpaceName(name: AppStrings.workspaceOne),
              const Row(
                children: [
                  IconTextRow(text:AppStrings.cairo,icon: AppAssets.locationIcon,),
                  IconTextRow(text:AppStrings.fourPeople,icon: AppAssets.userIcon,),
                ],
              ),
              verticalSpace(16.h),
              const Row(
                children: [
                  IconTextGreyContainer(icon: AppAssets.wifiIcon,text: AppStrings.freeWifi,),
                  IconTextGreyContainer(icon: AppAssets.projectorIcon,text: AppStrings.projector,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
