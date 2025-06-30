// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:skin_care_app/features/home/ui/widgets/doctors_list.dart';
//  // تأكد من أنك قد استوردت الـ Doctor

// class DoctorRepository {
//   final String apiUrl = "https://example.com/api/doctors"; // ضع الـ API URL هنا

//   Future<List<Future<List<DoctorsList>>>> getDoctors() async {
//     final response = await http.get(Uri.parse(apiUrl));

//     if (response.statusCode == 200) {
//       List<dynamic> data = json.decode(response.body);
//       return data.map((json) => DoctorsList.fromJson(json)).toList();
//     } else {
//       throw Exception('Failed to load doctors');
//     }
//   }
// }
