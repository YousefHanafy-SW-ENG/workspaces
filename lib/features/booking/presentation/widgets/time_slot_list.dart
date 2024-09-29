import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workspace/core/theming/app_colors.dart';
import 'package:workspace/core/theming/styles.dart';

class TimeSlotsList extends StatefulWidget {
  final List<String> timeSlots;
  final String time;
  final ValueChanged<String> onTimeSelected;

  const TimeSlotsList({
    super.key,
    required this.timeSlots,
    required this.time,
    required this.onTimeSelected,
  });

  @override
  TimeSlotsListState createState() => TimeSlotsListState();
}

class TimeSlotsListState extends State<TimeSlotsList> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.timeSlots.length,
        itemBuilder: (context, index) {
          final isSelected = selectedIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
              widget.onTimeSelected(widget.timeSlots[index]);
            },
            child: Container(
              width: 115.w,
              height: 56.h,
              margin: EdgeInsets.only(right: 8.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.r),
                border: Border.all(color: isSelected ? AppColors.blueColor : AppColors.borderColor),
                color: isSelected ? AppColors.blueColor2 : Colors.transparent,
              ),
              child: Center(
                child: Text(
                  widget.timeSlots[index],
                  style: TextStyles.font16BlackMedium.copyWith(
                    color: isSelected ? AppColors.blueColor : Colors.black,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
