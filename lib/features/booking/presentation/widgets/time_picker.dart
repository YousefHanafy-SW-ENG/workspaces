import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workspace/core/helpers/spacer.dart';
import 'package:workspace/core/theming/styles.dart';
import 'package:workspace/features/booking/presentation/widgets/time_slot_list.dart';

class TimePicker extends StatelessWidget {
  final String title;
  final List<String> timeSlots;
  final String selectedTime;
  final ValueChanged<String> onTimeSelected; // Add a callback

  const TimePicker({
    super.key,
    required this.title,
    required this.timeSlots,
    required this.selectedTime,
    required this.onTimeSelected, // Add this parameter
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyles.font16BlackSemiBold),
          verticalSpace(16.h),
          TimeSlotsList(
            timeSlots: timeSlots,
            time: selectedTime,
            onTimeSelected: (time) {
              onTimeSelected(time); // Call the callback instead of directly assigning
            },
          ),
        ],
      ),
    );
  }
}
