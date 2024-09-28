import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workspace/core/helpers/app_images.dart';
import 'package:workspace/core/helpers/app_strings.dart';
import 'package:workspace/core/theming/app_colors.dart';
import 'package:workspace/features/workspace_details/presentation/widgets/detail_container.dart';
import 'package:workspace/features/workspace_details/presentation/widgets/info_container.dart';

class AboutContent extends StatelessWidget {
  final String location;
  final String capacity;
  const AboutContent({super.key, required this.location, required this.capacity});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: AppColors.borderColor, width: 1.w),
        ),
      ),
      child:  SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            const DetailContainer(title: AppStrings.description,description: AppStrings.workspaceDescription,),
            InformationContainer(title: AppStrings.location, information: location, icon: AppAssets.locationIcon,),
            InformationContainer(title: AppStrings.capacity, information: capacity, icon: AppAssets.userIcon,),
          ],
        ),
      ),
    );
  }
}
