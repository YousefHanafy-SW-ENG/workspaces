import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workspace/core/helpers/app_strings.dart';
import 'package:workspace/core/theming/app_colors.dart';
import 'package:workspace/features/workspace_details/presentation/widgets/detail_container.dart';

class AboutContent extends StatelessWidget {
  const AboutContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: AppColors.borderColor, width: 1.w),
        ),
      ),
      child: const Column(
        children: [
          DetailContainer(title: AppStrings.description,description: AppStrings.workspaceDescription,)
        ],
      ),
    );
  }
}
