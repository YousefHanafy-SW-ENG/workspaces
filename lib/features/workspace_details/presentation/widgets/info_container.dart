import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workspace/core/theming/app_colors.dart';
import 'package:workspace/core/widgets/icon_text_row.dart';
import 'package:workspace/features/workspace_details/presentation/widgets/detail_title.dart';

class InformationContainer extends StatelessWidget {
  final String title;
  final String information;
  final String icon;
  const InformationContainer({super.key, required this.title, required this.information, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.h),
      child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: AppColors.borderColor,width: 1.w),
              bottom:BorderSide(color: AppColors.borderColor,width: 1.w),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h,horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DetailTitle(title: title,),
                IconTextRow(text: information, icon: icon)
              ],
            ),
          )
      ),
    );
  }
}
