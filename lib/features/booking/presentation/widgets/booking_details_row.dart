import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workspace/core/theming/styles.dart';

class BookingDetailsRow extends StatelessWidget {
  final String detail;
  final String value;
  const BookingDetailsRow({super.key, required this.detail, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(detail,style: TextStyles.font14BlackMedium,),
          const Spacer(),
          Text(value,style: TextStyles.font14BlackMedium,),
        ],
      ),
    );
  }
}
