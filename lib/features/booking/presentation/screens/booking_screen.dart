import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:workspace/core/helpers/app_strings.dart';
import 'package:workspace/core/helpers/extensions.dart';
import 'package:workspace/core/routing/routes.dart';
import 'package:workspace/core/theming/app_colors.dart';
import 'package:workspace/core/widgets/button_bottom_nav_bar.dart';
import 'package:workspace/core/widgets/primary_app_bar.dart';
import 'package:workspace/core/widgets/primary_button.dart';
import 'package:workspace/core/widgets/primary_padding.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  BookingScreenState createState() => BookingScreenState();
}

class BookingScreenState extends State<BookingScreen> {
  DateTime? selectedDate;
  CalendarFormat calendarFormat = CalendarFormat.month;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, context.height * 0.08),
        child: const PrimaryAppBar(
          title: AppStrings.selectDateAndTime,
          hasLeadingIcon: true,
          isTitleCentered: false,
        ),
      ),
      body: PrimaryPadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: TableCalendar(
              firstDay: DateTime.now(),
              lastDay: DateTime.utc(2025, 12, 31),
              focusedDay: DateTime.now(),
              selectedDayPredicate: (day) {
                return selectedDate == day;
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  selectedDate = selectedDay;
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
            )),
          ],
        ),
      ),
      bottomNavigationBar: ButtonBottomNavBar(
        button: PrimaryButton(
          text: AppStrings.confirmBooking,
          fillColor: AppColors.greyColor2,
          borderColor: AppColors.greyColor2,
          textColor: AppColors.greyColor3,
          onTap: () {
            if (selectedDate != null) {
              context.pushNamed(Routes.bookingDetailsScreen);
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Please select a date")),
              );
            }
          },
        ),
      ),
    );
  }
}
