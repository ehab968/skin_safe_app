import 'package:flutter/material.dart';

class CameraOverlay extends StatelessWidget {
  final Widget cameraPreview;

  const CameraOverlay({super.key, required this.cameraPreview});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: cameraPreview,
        ), // 📸 عرض الكاميرا
        LayoutBuilder(
          builder: (context, constraints) {
            double screenWidth = constraints.maxWidth;
            double screenHeight = constraints.maxHeight;
            double scanSize = 260; // حجم المربع
            return Stack(
              children: [
                /// 🔹 طبقة التعتيم مع فتحة القص
                ClipPath(
                  clipper: OverlayClipper(scanSize),
                  child: Container(
                    width: screenWidth,
                    height: screenHeight,
                    color: Colors.black.withValues(alpha: 0.5),
                  ),
                ),

                /// 🟩 رسم الحدود للمربع
                Center(
                  child: Container(
                    width: scanSize,
                    height: scanSize,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}

/// 🔹 كليب لتفريغ المربع من التعتيم
class OverlayClipper extends CustomClipper<Path> {
  final double boxSize;
  OverlayClipper(this.boxSize);

  @override
  Path getClip(Size size) {
    Path path = Path()..addRect(Rect.fromLTWH(0, 0, size.width, size.height));

    /// 🟩 تفريغ المربع من المنتصف
    path.addRect(
      Rect.fromLTWH(
        (size.width - boxSize) / 2,
        (size.height - boxSize) / 2,
        boxSize,
        boxSize,
      ),
    );
    // لو فى كذا شكل فوق بعض هيعمل فيل للاول و يسيب التانى
    return path..fillType = PathFillType.evenOdd;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
