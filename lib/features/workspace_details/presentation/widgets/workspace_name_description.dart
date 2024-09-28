import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workspace/core/helpers/app_strings.dart';
import 'package:workspace/core/helpers/spacer.dart';
import 'package:workspace/core/theming/styles.dart';
import 'package:workspace/core/widgets/primary_padding.dart';
import 'package:workspace/features/workspace_details/presentation/widgets/description_text.dart';

class WorkspaceNameAndDescription extends StatelessWidget {
  final String name;
  const WorkspaceNameAndDescription({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return PrimaryPadding(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(16.h),
          Text(name,style: TextStyles.font18BlackSemiBold,),
          verticalSpace(12.h),
          const DescriptionText(text: AppStrings.workspaceDescription,),
          verticalSpace(12.h),
        ],
      ),
    );
  }
}
