import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workspace/core/helpers/app_strings.dart';
import 'package:workspace/core/helpers/extensions.dart';
import 'package:workspace/core/theming/app_colors.dart';
import 'package:workspace/core/theming/styles.dart';
import 'package:workspace/features/workspace_details/presentation/widgets/about_content.dart';
import 'package:workspace/features/workspace_details/presentation/widgets/amenities_content.dart';

class WorkspaceTabs extends StatelessWidget {
  final String location;
  final String capacity;
  final String firstAmenity;
  final String secondAmenity;
  const WorkspaceTabs({
    super.key,
    required this.location,
    required this.capacity,
    required this.firstAmenity,
    required this.secondAmenity
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.h,bottom: 60.h),
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
              tabs: const [
                Tab(text: AppStrings.about),
                Tab(text: AppStrings.amenities),
              ],
              labelStyle: TextStyles.font14BlackSemiBold,
              labelColor: AppColors.blueColor,
              unselectedLabelColor: Colors.black,
              indicatorColor: AppColors.blueColor,
              indicatorWeight: 2,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 40.w),
            ),
            SizedBox(
              height: context.height/2.1,
              child: TabBarView(
                children: [
                  AboutContent(
                    location: location,
                    capacity: capacity,
                  ),
                  AmenitiesContent(
                    firstAmenity: firstAmenity,
                    secondAmenity: secondAmenity,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}