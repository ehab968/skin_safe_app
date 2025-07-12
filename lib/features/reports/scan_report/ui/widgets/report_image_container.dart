import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReportImageContainer extends StatelessWidget {
  const ReportImageContainer({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
      ),
      child: CachedNetworkImage(
        imageUrl: image,
        fit: BoxFit.cover,
        fadeInDuration: const Duration(milliseconds: 500),
        fadeInCurve: Curves.easeIn,
        fadeOutCurve: Curves.easeIn,
        fadeOutDuration: const Duration(milliseconds: 100),
        placeholder:
            (context, url) =>
                Container(color: Colors.grey.withValues(alpha: 0.2)),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
