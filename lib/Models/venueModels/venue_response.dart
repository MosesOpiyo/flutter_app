class VenueResponseModel {
  final String image;
  final String name;
  final String venuetype;
  final String location;
  final String customercare;

  const VenueResponseModel({
    required this.image,
    required this.name,
    required this.venuetype,
    required this.location,
    required this.customercare,
  });

  factory VenueResponseModel.fromJson(Map<String, dynamic> json) {
    return VenueResponseModel(
      image: json['image'],
      name: json['name'],
      venuetype: json['venuetype'],
      location: json['location'],
      customercare: json['customercare'],
    );
  }
}
