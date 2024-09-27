import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workspace/core/helpers/app_strings.dart';
import 'package:workspace/core/helpers/spacer.dart';
import 'package:workspace/core/theming/styles.dart';
import 'package:workspace/core/widgets/primary_padding.dart';

class WorkspaceNameAndDescription extends StatelessWidget {
  const WorkspaceNameAndDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return PrimaryPadding(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(16.h),
          Text('AlMaqarr Coworking Space',style: TextStyles.font18BlackSemiBold,),
          verticalSpace(12.h),
          Text(AppStrings.workspaceDescription,style: TextStyles.font14BlackRegular,),
          verticalSpace(12.h),
        ],
      ),
    );
  }
}
