import 'package:flutter/material.dart';

class BookingDetailsScreen extends StatelessWidget {
  final String name;
  final String location;
  final String capacity;
  final List<String> availableAmenities;
  final String date;
  final String checkInTime;
  final String checkOutTime;
  const BookingDetailsScreen({
    super.key,
    required this.name,
    required this.location,
    required this.capacity,
    required this.availableAmenities,
    required this.date,
    required this.checkInTime,
    required this.checkOutTime
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(name),
          Text(location),
          Text(capacity),
          Text(availableAmenities[0]),
          Text(availableAmenities[1]),
          Text(date),
          Text(checkInTime),
          Text(checkOutTime),
        ],
      ),
    );
  }
}
