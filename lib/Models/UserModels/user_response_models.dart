class UserResponseModel {
  final String username;
  final String email;
  final String phoneNumber;
  final String licensePlate;

  const UserResponseModel({
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.licensePlate,
  });

  factory UserResponseModel.fromJson(Map<String, dynamic> json) {
    return UserResponseModel(
      username: json['user']['username'],
      email: json['user']['email'],
      phoneNumber: json['phoneNumber'],
      licensePlate: json['licensePlate'],
    );
  }
}
