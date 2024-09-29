import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:workspace/core/theming/app_colors.dart';
import 'package:workspace/features/booking/presentation/cubit/booking_cubit.dart';

class BookingCalendar extends StatefulWidget {
  const BookingCalendar({super.key,});

  @override
  State<BookingCalendar> createState() => _BookingCalendarState();
}

class _BookingCalendarState extends State<BookingCalendar> {
  DateTime? selectedDate;
  CalendarFormat calendarFormat = CalendarFormat.month;

  @override
  Widget build(BuildContext context) {
        return TableCalendar(
          firstDay: DateTime.now(),
          lastDay: DateTime.utc(2025, 12, 31),
          focusedDay: DateTime.now(),
          selectedDayPredicate: (day) {
            return selectedDate == day;
          },
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              selectedDate = selectedDay;
              context
                  .read<BookingCubit>()
                  .updateDate( selectedDate.toString());
            });
          },
          calendarFormat: CalendarFormat.month,
          onFormatChanged: (format) {
            setState(() {
              calendarFormat = format;
            });
          },
          headerStyle: const HeaderStyle(
            formatButtonVisible: false, // Hide format button
            titleCentered: true,
          ),
          calendarStyle: CalendarStyle(
            todayDecoration: const BoxDecoration(),
            todayTextStyle: TextStyle(
              color: Colors.grey.shade400,
            ),
            selectedDecoration: const BoxDecoration(
              color: AppColors.blueColor,
              shape: BoxShape.rectangle,
            ),
          ),
        );
  }
}
