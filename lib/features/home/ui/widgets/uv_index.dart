import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math';

import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/features/home/data/models/uv_index_model.dart';

class UvIndex extends StatefulWidget {
  final UVIndexData? uvIndexData;
  final String? error;

  const UvIndex({super.key, this.uvIndexData, this.error});

  const UvIndex.withError({super.key, required this.error})
    : uvIndexData = null;

  @override
  _UvIndexState createState() => _UvIndexState();
}

class _UvIndexState extends State<UvIndex> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    final targetValue = widget.uvIndexData?.uvIndex ?? 0.0;
    _animation = Tween<double>(
      begin: 0,
      end: targetValue,
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
    // Show error state
    if (widget.error != null) {
      return Container(
        width: 343.w,
        height: 260.h,
        decoration: BoxDecoration(
          color: ColorManager.primaryBlue,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.error_outline, color: Colors.white, size: 48),
              SizedBox(height: 16),
              Text(
                'Failed to load UV Index',
                style: TextStyle(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    }

    // Show data state
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
            const SizedBox(height: 20), // تقليل المساحة الفارغة
            AnimatedBuilder(
              animation: _animation,
              builder:
                  (_, __) => CustomPaint(
                    size: const Size(240, 90),
                    painter: UVIndexArcPainter(_animation.value),
                  ),
            ),
            SizedBox(height: 5.h), // تقليل المسافة بين القوس والنص
            AnimatedBuilder(
              animation: _animation,
              builder:
                  (_, __) => Column(
                    children: [
                      Text(
                        _animation.value.toStringAsFixed(1),
                        style: const TextStyle(
                          fontSize: 32, // تصغير الخط لتجنب overflow
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        widget.uvIndexData?.riskLevel ??
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
          ..shader = const LinearGradient(
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
