class VenueResponseModel {
  final int id;
  final String image;
  final String name;
  final String venuetype;
  final String location;
  final int parking;
  final String customercare;

  const VenueResponseModel({
    required this.id,
    required this.image,
    required this.name,
    required this.venuetype,
    required this.location,
    required this.parking,
    required this.customercare,
  });

  factory VenueResponseModel.fromJson(Map<String, dynamic> json) {
    return VenueResponseModel(
      id: json['id'],
      image: json['image'],
      name: json['name'],
      venuetype: json['venuetype'],
      location: json['location'],
      parking: json['parking_spaces'],
      customercare: json['customercare'],
    );
  }
}
