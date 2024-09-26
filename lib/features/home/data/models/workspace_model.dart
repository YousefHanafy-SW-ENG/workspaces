class WorkSpace {
  final String name;
  final String location;
  final String capacity;
  final List<String> availableAmenities;

  WorkSpace({
    required this.name,
    required this.location,
    required this.capacity,
    required this.availableAmenities,
  });

  factory WorkSpace.fromJson(Map<String, dynamic> json) {
    return WorkSpace(
      name: json['name'],
      location: json['location'],
      capacity: json['capacity'],
      availableAmenities: List<String>.from(json['available_amenities']),
    );
  }
}
