class TimerResponseModel {
  final bool timerActivated;

  const TimerResponseModel({
    required this.timerActivated,
  });

  factory TimerResponseModel.fromJson(Map<String, dynamic> json) {
    return TimerResponseModel(
      timerActivated: json['timerActivated'],
    );
  }
}
