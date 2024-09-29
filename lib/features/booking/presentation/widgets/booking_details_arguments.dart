class BookingDetailsArguments {
  final String name;
  final String location;
  final String capacity;
  final List<String> availableAmenities;
  final String date;
  final String checkInTime;
  final String checkOutTime;

  BookingDetailsArguments({
    required this.name,
    required this.location,
    required this.capacity,
    required this.availableAmenities,
    required this.date,
    required this.checkInTime,
    required this.checkOutTime
  });
}
