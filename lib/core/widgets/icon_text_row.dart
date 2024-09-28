import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workspace/core/helpers/spacer.dart';
import 'package:workspace/core/theming/styles.dart';

class IconTextRow extends StatelessWidget {
  final String text;
  final String icon;
  const IconTextRow({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(icon),
        horizontalSpace(6.w),
        Text(text,style: TextStyles.font14BlackMedium,)
      ],
    );
  }
}
