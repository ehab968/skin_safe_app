// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:skin_care_app/core/theme/colors.dart';
// import 'package:skin_care_app/core/theme/styles.dart';
// import 'package:syncfusion_flutter_gauges/gauges.dart';

// class UVIndexWidget extends StatelessWidget {
//   final double uvValue;

//   const UVIndexWidget({super.key, required this.uvValue});

//   @override
//   Widget build(BuildContext context) {
//      return Container(
//       width: 343.w,
//       height: 156.h,
//       decoration: BoxDecoration(
//         color: ColorManager.primaryBlue,
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           Positioned(
//             top: 15,
//             left: 15,
//             child: Text("UV index",
//                 style: TextStyle(color: Colors.white, fontSize: 14)),
//           ),]
// //           // ✅ مؤشر UV
// //           SfRadialGauge(
// //             axes: <RadialAxis>[
// //               RadialAxis(
// //                 startAngle: 180,
// //                 endAngle: 0,
// //                 minimum: 0,
// //                 maximum: 12,
// //                 interval: 3, // تحديد الفواصل الزمنية للقوس
// //                 showLabels: false, // إخفاء الأرقام الافتراضية
// //                 showTicks: false, // إخفاء العلامات الافتراضية
// //                 showAxisLine: false, // إزالة الخط الأساسي
// //                 radiusFactor: 0.8,
// //                 ranges: <GaugeRange>[
// //                   GaugeRange(
// //                     startValue: 0,
// //                     endValue: uvValue,
// //                     color: Colors.red,
// //                     startWidth: 8,
// //                     endWidth: 8,
// //                   ),
// //                   GaugeRange(
// //                     startValue: uvValue,
// //                     endValue: 12,
// //                     color: Colors.white.withOpacity(0.5),
// //                     startWidth: 8,
// //                     endWidth: 8,
// //                   ),
// //                 ],
// //                 pointers: <GaugePointer>[
// //                   NeedlePointer(
// //                     value: uvValue,
// //                     needleColor: Colors.orange,
// //                     knobStyle: KnobStyle(
// //                       color: Colors.orange,
// //                       borderColor: Colors.white,
// //                       borderWidth: 2,
// //                     ),
// //                   )
// //                 ],
// //               ),
// //             ],
// //           ),
// //           // ✅ توزيع الأرقام حول القوس
// //           ..._buildNumbers(),
// //           // ✅ عرض القيمة في المنتصف
// //           Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: [
// //               Text(
// //                 uvValue.toStringAsFixed(0), // القيمة الحالية
// //                 style: TextStyle(
// //                     fontSize: 32, color: Colors.white, fontWeight: FontWeight.bold),
// //               ),
// //               Text(
// //                 "Extreme",
// //                 style: TextStyle(
// //                     fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
// //               ),
// //             ],
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   /// 🔢 توزيع الأرقام حول القوس مثل الصورة
// //   List<Widget> _buildNumbers() {
// //     List<String> numbers = ["01", "03", "06", "09", "12"];
// //     List<double> angles = [
// //       150, // 01 (أقصى اليسار)
// //       120, // 03
// //       90,  // 06 (في الأعلى)
// //       60,  // 09
// //       30,  // 12 (أقصى اليمين)
// //     ];
// //     double radius = 80; // نصف القطر

// //     return List.generate(numbers.length, (index) {
// //       double angle = angles[index] * (pi / 180); // تحويل إلى راديان
// //       double x = 125 + radius * cos(angle);
// //       double y = 90 + radius * sin(angle);

// //       return Positioned(
// //         left: x - 10,
// //         top: y - 10,
// //         child: Text(
// //           numbers[index],
// //           style: const TextStyle(color: Colors.white, fontSize: 14),
// //         ),
// //       );
// //     });
// //   }
// // }
//      ));
//     }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math';

import 'package:skin_care_app/core/theme/colors.dart';

class UvIndex extends StatefulWidget {
  @override
  _SkinSafeAppState createState() => _SkinSafeAppState();
}

class _SkinSafeAppState extends State<UvIndex>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween<double>(
      begin: 0,
      end: 10,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    _controller.forward();
  }

  String getUVRiskLevel(double uvIndex) {
    if (uvIndex <= 2) return 'Low';
    if (uvIndex <= 5) return 'Moderate';
    if (uvIndex <= 7) return 'High';
    if (uvIndex <= 10) return 'Very High';
    return 'Extreme';
  }

  Color getUVColor(double uvIndex) {
    if (uvIndex <= 2) return Colors.green;
    if (uvIndex <= 5) return Colors.yellow;
    if (uvIndex <= 7) return Colors.orange;
    if (uvIndex <= 10) return Colors.red;
    return Colors.purple;
  }

@override
Widget build(BuildContext context) {
  return Container(
    width: 343.w,
    height: 260.h, // زيادة الارتفاع لتجنب overflow
    decoration: BoxDecoration(
      color: ColorManager.primaryBlue,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 20), // تقليل المساحة الفارغة
          AnimatedBuilder(
            animation: _animation,
            builder: (_, __) => CustomPaint(
              size: Size(240, 90),
              painter: UVIndexArcPainter(_animation.value),
            ),
          ),
          SizedBox(height: 5.h), // تقليل المسافة بين القوس والنص
          AnimatedBuilder(
            animation: _animation,
            builder: (_, __) => Column(
              children: [
                Text(
                  _animation.value.toInt().toString(),
                  style: TextStyle(
                    fontSize: 32, // تصغير الخط لتجنب overflow
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  getUVRiskLevel(_animation.value),
                  style: TextStyle(
                    fontSize: 24, // تقليل الحجم قليلاً
                    color: getUVColor(_animation.value),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

  @override
  void dispose() {
    _controller.dispose();
    super.dispose(); // ✅ تصحيح الخطأ
  }
}

class UVIndexArcPainter extends CustomPainter {
  final double uvIndex;

  UVIndexArcPainter(this.uvIndex);

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height);
    final radius = size.width / 2;

    // Gradient arc paint
    final Paint paint =
        Paint()
          ..shader = LinearGradient(
            colors: [
              Colors.green,
              Colors.yellow,
              Colors.orange,
              Colors.red,
              Colors.purple,
            ],
          ).createShader(Rect.fromCircle(center: center, radius: radius))
          ..style = PaintingStyle.stroke
          ..strokeWidth = 10;

    // Draw the arc
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      pi,
      pi,
      false,
      paint,
    );

    // Calculate the arrow's position based on UV index
    final angle = (uvIndex / 12) * pi;
    final arrowX = center.dx + radius * -cos(angle);
    final arrowY = center.dy + radius * -sin(angle);

    // Draw arrow line
    final Paint arrowPaint =
        Paint()
          ..color = Colors.white
          ..strokeWidth = 3;

    canvas.drawLine(center, Offset(arrowX, arrowY), arrowPaint);

    // Draw arrow head (circle)
    canvas.drawCircle(Offset(arrowX, arrowY), 8, Paint()..color = Colors.white);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
