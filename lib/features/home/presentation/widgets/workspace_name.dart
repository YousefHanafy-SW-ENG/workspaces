import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workspace/core/theming/styles.dart';

class WorkSpaceName extends StatelessWidget {
  final String name;
  const WorkSpaceName({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 16.h),
      child: Text(name,
        style: TextStyles.font16BlackSemiBold,),
    );
  }
}
