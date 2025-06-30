// doctor_model.dart
class TopDoctorsModel {
  final String firstName;
  final String secondName;
  final String specialty;
  final int experience;
  final double? ratingsAverage;
  final int ratingsQuantity;
  final String about;
  final String certificate;
  final String image;
  final String day;

  TopDoctorsModel({
    required this.firstName,
    required this.secondName,
    required this.specialty,
    required this.experience,
    this.ratingsAverage,
    required this.ratingsQuantity,
    required this.about,
    required this.certificate,
    required this.image,
    required this.day,
  });

  factory TopDoctorsModel.fromJson(Map<String, dynamic> json) {
    return TopDoctorsModel(
      firstName: json['firstName'],
      secondName: json['secondName'],
      specialty: json['specialty'],
      experience: json['experience'],
      ratingsAverage: json['ratingsAverage'],
      ratingsQuantity: json['ratingsQuantity'],
      about: json['about'],
      certificate: json['certificate'],
      image: json['image'],
      day: json['day'],
    );
  }
}
