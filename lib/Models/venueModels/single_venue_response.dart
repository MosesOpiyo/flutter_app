class SingleVenueResponseModel {
  final int id;
  final String name;
  final String image;
  final String location;
  final String venueType;
  final int parkingSpace;
  final int customerCare;

  const SingleVenueResponseModel({
    required this.id,
    required this.name,
    required this.image,
    required this.location,
    required this.venueType,
    required this.parkingSpace,
    required this.customerCare,
  });

  factory SingleVenueResponseModel.fromJson(Map<String, dynamic> json) {
    return SingleVenueResponseModel(
        id: json['id'],
        name: json['name'],
        image: json['venue_image'],
        location: json['location'],
        venueType: json['venue_type'],
        parkingSpace: json['parking_spaces'],
        customerCare: json['customer_care_number']);
  }
}
