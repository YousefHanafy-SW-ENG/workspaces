import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:workspace/core/theming/app_colors.dart';
import 'package:workspace/features/booking/presentation/cubit/booking_cubit.dart';
import 'package:intl/intl.dart';

class BookingCalendar extends StatefulWidget {
  const BookingCalendar({super.key});

  @override
  State<BookingCalendar> createState() => _BookingCalendarState();
}

class _BookingCalendarState extends State<BookingCalendar> {
  DateTime? selectedDate;
  DateTime focusedDay = DateTime.now();
  CalendarFormat calendarFormat = CalendarFormat.month;

  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now();
    focusedDay = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime.now(),
      lastDay: DateTime.utc(2025, 12, 31),
      focusedDay: focusedDay,
      selectedDayPredicate: (day) {
        return selectedDate == day;
      },
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          selectedDate = selectedDay;
          this.focusedDay = focusedDay;
          String formattedDate = DateFormat('dd/MM/yyyy').format(selectedDate!);
          context.read<BookingCubit>().updateDate(formattedDate);
        });
      },
      calendarFormat: calendarFormat,
      onFormatChanged: (format) {
        setState(() {
          calendarFormat = format; // Update calendar format
        });
      },
      headerStyle: const HeaderStyle(
        formatButtonVisible: false,
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

  @override
  void dispose() {
    selectedDate = null;
    focusedDay = DateTime.now();
    context.read<BookingCubit>().close();
    super.dispose();
  }
}
