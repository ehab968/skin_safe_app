import 'package:flutter/material.dart';
import 'package:skin_care_app/features/My_Appointments/ui/widgets/appointment_case_card.dart';
import 'package:skin_care_app/features/My_Appointments/ui/widgets/appointment_model.dart';
class MyAppointmentsScreen extends StatelessWidget {
  final List<Appointment> appointments = [
    Appointment(
      doctorName: "Dr.Hady Helmy",
      specialty: "Dermatologist",
      location: "Salah Salem Street,\n Ismailia, Egypt",
      dateTime: "Mars 12, 2025 10:00 PM",
      status: "upcoming",
      image: "assets/images/DrHadyHelmy.jpg",
    ),
    Appointment(
      doctorName: "Dr.Hend Khaled",
      specialty: "Dermatologist",
      location: "Salah Salem Street,\n Ismailia, Egypt",
      dateTime: "Mars 02, 2025 09:00 PM",
      status: "cancelled",
      image: "assets/images/drHendKhaled.jpg",
    ),
    Appointment(
      doctorName: "Dr.Gamila Emad",
      specialty: "Dermatologist",
      location: "Salah Salem Street,\n Ismailia, Egypt",
      dateTime: "Feb 12, 2025 11:00 PM",
      status: "past",
      image: "assets/images/DrGamilaEmad.jpg",
    ),
     Appointment(
      doctorName: "Dr.Hossam Ali",
      specialty: "Dermatologist",
      location: "Salah Salem Street,\n Ismailia, Egypt",
      dateTime: "Feb 01, 2025 09:00 Pm",
      status: "past",
      image: "assets/images/DrHossamAli.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          padding: const EdgeInsets.all(12),
          itemCount: appointments.length,
          itemBuilder: (context, index) {
            final a = appointments[index];
            return AppointmentCard(
              status: a.status,
              dateTime: a.dateTime,
              doctorName: a.doctorName,
              specialty: a.specialty,
              location: a.location,
              image: a.image,
              onViewDetails: () {
                
                // print('Tapped on ${a.doctorName}');
              },
            );
          },
        ),
      ),
    );
  }
}
