// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:skin_care_app/core/helper/spacing.dart';
// import 'package:skin_care_app/features/scan_report/data/models/user_report_response.dart';
// import 'package:skin_care_app/features/scan_report/ui/widgets/comment_section.dart';
// import 'package:skin_care_app/features/scan_report/ui/widgets/report_details.dart';
// import 'package:skin_care_app/features/scan_report/ui/widgets/report_image_container.dart';

// class ViewReportBody extends StatelessWidget {
//   const ViewReportBody({super.key, required this.reportData});
//   final UserReportResponse reportData;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 16.w),
//       child: Column(
//         children: [
//           verticalSpace(height: 55),
//           ReportImageContainer(
//             image:
//                 Image.network(
//                   reportData.scannedImage ?? '',
//                   fit: BoxFit.cover,
//                 ).image,
//           ),
//           verticalSpace(height: 16),
//           const ReportDetails(
//             name: 'Muhammed Ali',
//             date: '14-Mar-2025',
//             phone: '(20) 10 222 333 44 ',
//             skinTone: 'Light to medium',
//             gender: 'male',
//             typeDetected: 'Melanoma',
//           ),
//           verticalSpace(height: 16),
//           const CommentSection(
//             comment:
//                 'You should visit a dermatologist specialized in skin cancer, you should do imaging (CT/MRI/PET) every 3-6 months based on disease stage ',
//           ),
//         ],
//       ),
//     );
//   }
// }
