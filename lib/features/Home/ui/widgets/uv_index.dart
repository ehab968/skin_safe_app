import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class UVIndexWidget extends StatelessWidget {
  final double uvValue;

  const UVIndexWidget({super.key, required this.uvValue});

  @override
  Widget build(BuildContext context) {
     return Container(
      width: 343.w,
      height: 156.h,
      decoration: BoxDecoration(
        color: ColorManager.primaryBlue, // استبدل بـ ColorManager.primaryBlue إن كنت تستخدمه
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 15,
            left: 15,
            child: Text("UV index",
                style: TextStyle(color: Colors.white, fontSize: 14)),
          ),]
//           // ✅ مؤشر UV
//           SfRadialGauge(
//             axes: <RadialAxis>[
//               RadialAxis(
//                 startAngle: 180,
//                 endAngle: 0,
//                 minimum: 0,
//                 maximum: 12,
//                 interval: 3, // تحديد الفواصل الزمنية للقوس
//                 showLabels: false, // إخفاء الأرقام الافتراضية
//                 showTicks: false, // إخفاء العلامات الافتراضية
//                 showAxisLine: false, // إزالة الخط الأساسي
//                 radiusFactor: 0.8,
//                 ranges: <GaugeRange>[
//                   GaugeRange(
//                     startValue: 0,
//                     endValue: uvValue,
//                     color: Colors.red,
//                     startWidth: 8,
//                     endWidth: 8,
//                   ),
//                   GaugeRange(
//                     startValue: uvValue,
//                     endValue: 12,
//                     color: Colors.white.withOpacity(0.5),
//                     startWidth: 8,
//                     endWidth: 8,
//                   ),
//                 ],
//                 pointers: <GaugePointer>[
//                   NeedlePointer(
//                     value: uvValue,
//                     needleColor: Colors.orange,
//                     knobStyle: KnobStyle(
//                       color: Colors.orange,
//                       borderColor: Colors.white,
//                       borderWidth: 2,
//                     ),
//                   )
//                 ],
//               ),
//             ],
//           ),
//           // ✅ توزيع الأرقام حول القوس
//           ..._buildNumbers(),
//           // ✅ عرض القيمة في المنتصف
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 uvValue.toStringAsFixed(0), // القيمة الحالية
//                 style: TextStyle(
//                     fontSize: 32, color: Colors.white, fontWeight: FontWeight.bold),
//               ),
//               Text(
//                 "Extreme",
//                 style: TextStyle(
//                     fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   /// 🔢 توزيع الأرقام حول القوس مثل الصورة
//   List<Widget> _buildNumbers() {
//     List<String> numbers = ["01", "03", "06", "09", "12"];
//     List<double> angles = [
//       150, // 01 (أقصى اليسار)
//       120, // 03
//       90,  // 06 (في الأعلى)
//       60,  // 09
//       30,  // 12 (أقصى اليمين)
//     ];
//     double radius = 80; // نصف القطر

//     return List.generate(numbers.length, (index) {
//       double angle = angles[index] * (pi / 180); // تحويل إلى راديان
//       double x = 125 + radius * cos(angle);
//       double y = 90 + radius * sin(angle);

//       return Positioned(
//         left: x - 10,
//         top: y - 10,
//         child: Text(
//           numbers[index],
//           style: const TextStyle(color: Colors.white, fontSize: 14),
//         ),
//       );
//     });
//   }
// }
     ));
    }
}