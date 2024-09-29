import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workspace/core/theming/app_colors.dart';
import 'package:workspace/features/booking/presentation/widgets/booking_details_row.dart';
import 'package:workspace/features/workspace_details/presentation/widgets/detail_title.dart';

class ConfirmationDetailsContainer extends StatelessWidget {
  final String title;
  final List<Map<String, String>> details;
  const ConfirmationDetailsContainer({
    super.key,
    required this.title,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom:8.h),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: AppColors.borderColor, width: 1.w),
            bottom: BorderSide(color: AppColors.borderColor, width: 1.w),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
          child: Column(
            children: [
              DetailTitle(title: title),
              Column(
                children: details.map((detail) {
                  return BookingDetailsRow(
                    detail: detail['detail'] ?? '',
                    value: detail['value'] ?? '',
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
