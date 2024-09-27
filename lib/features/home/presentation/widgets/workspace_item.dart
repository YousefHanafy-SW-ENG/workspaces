import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workspace/core/helpers/app_images.dart';
import 'package:workspace/core/helpers/extensions.dart';
import 'package:workspace/core/helpers/spacer.dart';
import 'package:workspace/core/routing/routes.dart';
import 'package:workspace/core/theming/app_colors.dart';
import 'package:workspace/features/home/presentation/widgets/icon_text_grey_container.dart';
import 'package:workspace/features/home/presentation/widgets/icon_text_row.dart';
import 'package:workspace/features/home/presentation/widgets/work_space_image.dart';
import 'package:workspace/features/home/presentation/widgets/workspace_name.dart';

class WorkSpaceItem extends StatelessWidget {
  final String workspaceName;
  final String capacity;
  final String location;
  final String firstAmenity;
  final String secondAmenity;
  const WorkSpaceItem({
    super.key,
    required this.workspaceName,
    required this.capacity,
    required this.location,
    required this.firstAmenity,
    required this.secondAmenity
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: GestureDetector(
        onTap: (){
          context.pushNamed(Routes.workspaceDetailsScreen);
        },
        behavior: HitTestBehavior.opaque,
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
                WorkSpaceName(name: workspaceName),
                Padding(
                  padding: EdgeInsets.only(right: 5.w),
                  child: Row(
                    children: [
                      IconTextRow(text:location,icon: AppAssets.locationIcon,),
                      const Spacer(),
                      IconTextRow(text:capacity,icon: AppAssets.userIcon,),
                    ],
                  ),
                ),
                verticalSpace(16.h),
                Row(
                  children: [
                    IconTextGreyContainer(icon: AppAssets.wifiIcon,text: firstAmenity,),
                    IconTextGreyContainer(icon: AppAssets.projectorIcon,text: secondAmenity,),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
