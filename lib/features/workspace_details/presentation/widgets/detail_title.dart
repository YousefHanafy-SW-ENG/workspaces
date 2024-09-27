import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workspace/core/theming/styles.dart';

class DetailTitle extends StatelessWidget {
  final String title;
  final String? icon;

  const DetailTitle({
    super.key,
    required this.title,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Row(
        children: [
          if (icon != null) ...[
            SvgPicture.asset(
              icon!,
            ),
            SizedBox(width: 8.w),
          ],
          Text(
            title,
            style: TextStyles.font14BlackSemiBold,
          ),
        ],
      ),
    );
  }
}
