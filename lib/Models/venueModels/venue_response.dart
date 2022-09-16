import 'dart:convert';

List<Venue> venueFromJson(String str) =>
    List<Venue>.from(json.decode(str).map((x) => Venue.fromJson(x)));

String venueToJson(List<Venue> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Venue {
  Venue({
    required this.venueImage,
    required this.name,
    required this.venueType,
    required this.location,
    required this.parkingSpace,
    required this.customerCare,
  });

  String venueImage;
  String name;
  String venueType;
  String location;
  int parkingSpace;
  int customerCare;

  factory Venue.fromJson(Map<String, dynamic> json) => Venue(
        venueImage: json["venue-image"],
        name: json["name"],
        venueType: json["venue-type"],
        location: json["location"],
        parkingSpace: json["parkingSpace"],
        customerCare: json["customerCare"],
      );

  toJson() {}
}
