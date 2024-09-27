import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workspace/core/theming/font_weight_helper.dart';

class DescriptionText extends StatelessWidget {
  final String text;
  final Color? color;
  const DescriptionText({super.key, this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeightHelper.regular,
        color: color??Colors.black,
      ),);
  }
}
